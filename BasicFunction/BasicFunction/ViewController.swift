//
//  ViewController.swift
//  BasicFunction
//
//  Created by Cns on 2017/12/22.
//  Copyright © 2017年 YQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }

    @IBAction func nextPageClick(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let customVC = storyBoard.instantiateViewController(withIdentifier: "SubVC")
        customVC.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(customVC, animated: true)
        
    }
    
    @IBAction func tapClick(_ sender: Any) {
        textField.becomeFirstResponder()
    }
}

