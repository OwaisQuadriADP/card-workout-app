//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Quadri, Owais on 2022-10-24.
//

import UIKit

class CardSelectionVC: UIViewController {
//variables
    @IBOutlet var cardImageView: UIImageView!// IB outlet to gain access and change properties with code
    @IBOutlet var buttons: [UIButton]!
    let cornerRadius: CGFloat = 5
    var timer: Timer!
    var cards: [UIImage]  = Card.allValues
    //viewdidload / appear / disappear
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for button in buttons {
            button.layer.cornerRadius = cornerRadius
        }
        startTimer()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)//call supers on overrieds
        timer.invalidate()//make sure timer turns off
    }
    //other funcs
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    @objc func showRandomCard(){
        cardImageView.image = cards.randomElement() ?? UIImage(named:"AS")
    }
    @IBAction func stopButtonTapped(_ sender: UIButton) { // IB Action to create functions / onClick
        timer.invalidate()
    }
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    

}
