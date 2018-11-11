//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Jake D'Ull on 11/10/18.
//  Copyright © 2018 Jake D'Ull. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {

    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var extraAnswer1: UITextField!
    @IBOutlet weak var extraAnswer2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        let extraAnswer1Text = extraAnswer1.text
        let extraAnswer2Text = extraAnswer2.text
       
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
            let alert = UIAlertController(title: "Missing Text", message: "You need to enter both a question and an answer", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
        } else {
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, xtraAnswer1: extraAnswer1Text!, xtraAnswer2: extraAnswer2Text!)
            dismiss(animated: true)
        }
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self
 }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

