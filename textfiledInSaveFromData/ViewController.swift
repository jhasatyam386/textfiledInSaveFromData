//
//  ViewController.swift
//  textfiledInSaveFromData
//
//  Created by R&W on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! ViewController3
        abc.a1 = t1.text!
        abc.a2 = t2.text!
    }
    @IBAction func saveButtonAction(_ sender: UIButton) {
       showAlert()
    }
    func showAlert(){
        let alert = UIAlertController(title: "save", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default, handler: { _ in
            self.performSegue(withIdentifier: "cell", sender: self)
        }))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive, handler: nil))
        present(alert,animated: true,completion: nil)
    }
   
}

