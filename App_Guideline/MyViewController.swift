//
//  ViewController.swift
//  App_Guideline
//
//  Created by 최승원 on 2021/07/11.
//

import UIKit

class MyViewController: UIViewController {

    convenience init(title: String, bgColor: UIColor) {
        
        self.init()
        self.title = title
        self.view.backgroundColor = bgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "sivbal 뭐라도 해야지"
        self.view.backgroundColor = .systemGray
    }


}

