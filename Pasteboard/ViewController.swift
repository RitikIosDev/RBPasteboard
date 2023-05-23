//
//  ViewController.swift
//  Pasteboard
//
//  Created by ie07 on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primaryImageView: UIImageView!
    @IBOutlet weak var secondaryImageView: UIImageView!
    @IBOutlet weak var copyImageButton: UIButton!
    @IBOutlet weak var pasteImageButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var copyTextButton: UIButton!
    @IBOutlet weak var pasteTextButton: UIButton!
    
    let pasteboard = UIPasteboard.general

    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondaryImageView.image = UIImage(named: "placeholderImage")
        // Do any additional setup after loading the view.
        textView.text = "A pasteboard is a secure and standardized mechanism for the exchange of data within or between applications. Many operations depend on the pasteboard, notable copy-cut-paste. On OS X, drag-and-drop operations and application services also depend upon the pasteboard. But you can also use pasteboards in other situations where sharing data between applications is desirable. my changes my changes2"
        
        setup()
    }

    func setup(){
        primaryImageView.layer.borderWidth = 2
        primaryImageView.layer.borderColor = .init(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        secondaryImageView.layer.borderWidth = 2
        secondaryImageView.layer.borderColor = .init(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
    }
    
    @IBAction func copyImageButtonPressed(_ sender: UIButton) {
        pasteboard.image = primaryImageView.image
    }
    
    @IBAction func pasteImageButtonPressed(_ sender: UIButton) {
        if pasteboard.image == nil{return} else{
            secondaryImageView.image = pasteboard.image
        }
    }
    
    @IBAction func copyTextButtonPressed(_ sender: UIButton) {
        pasteboard.string = textView.text
    }
    
    @IBAction func pasteTextButtonPressed(_ sender: UIButton) {
        if pasteboard.string == nil{return} else{
            let content = pasteboard.string
            textField.text = textField.text! + content!
        }
    }
    
    
}

