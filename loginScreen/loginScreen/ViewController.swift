//
//  ViewController.swift
//  loginScreen
//
//  Created by rncodes on 29/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var firstTextField: UITextField! {
        didSet {
            firstTextField.layer.cornerRadius = 8.2
            firstTextField.leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 16.37, height: 16.37))
            let image = UIImage(named: "mess")
            imageView.image = image
            firstTextField.leftView = imageView
        }
    }
    
    
    @IBOutlet weak var secondTextField: UITextField! {
        didSet {
            secondTextField.layer.cornerRadius = 8.2
            secondTextField.leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 16.37, height: 16.37))
            let image = UIImage(named: "p")
            imageView.image = image
            secondTextField.leftView = imageView
        }
    }
}

extension UITextField{
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

