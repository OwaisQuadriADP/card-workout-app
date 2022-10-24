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
    //viewdidload / appear
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in buttons {
            button.layer.cornerRadius = cornerRadius
        }
        // Do any additional setup after loading the view.
    }
    //other funcs
    @IBAction func stopButtonTapped(_ sender: UIButton) { // IB Action to create functions / onClick
        
    }
    

}
