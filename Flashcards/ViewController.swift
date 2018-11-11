//
//  ViewController.swift
//  Flashcards
//
//  Created by Jake D'Ull on 10/13/18.
//  Copyright © 2018 Jake D'Ull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var frontlabel: UILabel!
    @IBOutlet weak var backlabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.3
        frontlabel.layer.cornerRadius = 20.0
        frontlabel.clipsToBounds = true
        backlabel.layer.cornerRadius = 20.0
        backlabel.clipsToBounds = true
        
        buttonOne.layer.borderWidth = 3.0
        buttonOne.layer.borderColor = #colorLiteral(red: 0.4095181823, green: 0.8057927489, blue: 0.9722651839, alpha: 1)
        buttonOne.layer.cornerRadius = 10.0
        buttonTwo.layer.borderWidth = 3.0
        buttonTwo.layer.borderColor = #colorLiteral(red: 0.4095181823, green: 0.8057927489, blue: 0.9722651839, alpha: 1)
        buttonTwo.layer.cornerRadius = 10.0
        buttonThree.layer.borderWidth = 3.0
        buttonThree.layer.borderColor = #colorLiteral(red: 0.4095181823, green: 0.8057927489, blue: 0.9722651839, alpha: 1)
        buttonThree.layer.cornerRadius = 10.0

    }
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if frontlabel.isHidden == true{
            frontlabel.isHidden = false
        }else{
            frontlabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String, xtraAnswer1: String, xtraAnswer2: String) {
        frontlabel.text = question
        backlabel.text = answer
        buttonOne.setTitle(xtraAnswer1, for: .normal)
        buttonTwo.setTitle(answer, for: .normal)
        buttonThree.setTitle(xtraAnswer2, for: .normal)
    }
    
    @IBAction func didTapOne(_ sender: Any) {
        frontlabel.isHidden = false
    }
    
    @IBAction func didTapTwo(_ sender: Any) {
        frontlabel.isHidden = true
    }
    
    @IBAction func didTapThree(_ sender: Any) {
        frontlabel.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self
    }
    

}

