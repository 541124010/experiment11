//
//  SecondViewController.swift
//  多mvc
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 xh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var stu:Student!
    
    
 
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfNo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNo.text=stu.no
        tfName.text=stu.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
      ///  dismiss(animated: true, completion: nil)
        stu.no=tfNo.text!
        stu.name=tfName.text!

        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
