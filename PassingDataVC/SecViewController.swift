//
//  SecViewController.swift
//  PassingDataVC
//
//  Created by Apple on 24/11/22.
//

import UIKit

protocol MyDataSendingDelegateProtocol: AnyObject {
    func sendDataToFirstViewController(myData: String)
}

class SecViewController: UIViewController {
    var change : ((Bool) -> Void)?
    weak var delegate: MyDataSendingDelegateProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressChangeButton(_ sender: Any) {
        //closures
        change?(true)
        dismiss(animated: true, completion: nil)
        
       // if self.delegate != nil && self.dataToSendTextField.text != nil {
            let dataToBeSent = "self.dataToSendTextField.text"
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent)
            dismiss(animated: true, completion: nil)
       // }
    }

}
