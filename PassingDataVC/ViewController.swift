//
//  ViewController.swift
//  PassingDataVC
//
//  Created by Apple on 24/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goToSecond(_ sender: Any) {
        self.performSegue(withIdentifier: "segue1", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

           if segue.identifier == "segue1" {
               let des = segue.destination as! SecViewController
            des.delegate = self
               des.change = { [weak self] (value) in
                   print(value)
                   self?.titleLabel.text = "SetValue"// set a value
               }
           }
       }
}

extension ViewController: MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String) {
        self.titleLabel.text = myData
    }
}

