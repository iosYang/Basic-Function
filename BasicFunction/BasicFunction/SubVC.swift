//
//  SubVC.swift
//  BasicFunction
//
//  Created by Cns on 2017/12/22.
//  Copyright © 2017年 YQ. All rights reserved.
//

import UIKit

class SubVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    @IBAction func goBack(_ sender: Any) {
//        self.navigationController?.popViewController(animated: true)
//    }
    
    @IBAction func testClick(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let customVC = storyBoard.instantiateViewController(withIdentifier: "CustomVC")
        self.navigationController?.pushViewController(customVC, animated: true)
    }

}
