//
//  ViewController.swift
//  TestFramework
//
//  Created by 杨森 on 2018/9/10.
//  Copyright © 2018年 yangsen. All rights reserved.
//

import UIKit
import TestFW

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let persion = Person <ObjectA> ()
        
        persion.object.name = "A"
        
        print(persion.object.name ?? "")
    }

}

