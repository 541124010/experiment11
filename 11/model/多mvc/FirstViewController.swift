//
//  ViewController.swift
//  多mvc
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 xh. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {

    //new 一个类  引用同一个对象
    var stu=Student()

    @IBOutlet weak var tfNo: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        tfNo.text=stu.no
        tfName.text=stu.name
    }
    

    @IBAction func showSecondVC(_ sender: Any) {
        stu.no=tfNo.text!
        stu.name=tfName.text!
        
        // 从文件中恢复storyboard 而不是新建一个ssecondviewcontroller()
        let secVC=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"SecondVC" ) as! SecondViewController
        // 正向
        secVC.stu=stu
      //  present(secVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(secVC, animated: true)
        
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ThirdVC" )
        
        present(thirdVC, animated: true, completion: nil)
    }
    
}

