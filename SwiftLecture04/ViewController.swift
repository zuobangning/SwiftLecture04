//
//  ViewController.swift
//  SwiftLecture04
//
//  Created by stu1 on 2018/7/22.
//  Copyright © 2018年 tripim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var touchView: UIView!
    @IBOutlet weak var lbName: UILabel!
    //@IBOutlet weak var btnConfirm: UIButton!
    
    
    @IBOutlet weak var UISwitch: UISwitch!
    
    @IBOutlet weak var UISlider: UISlider!
    
    @IBOutlet weak var UIStepper: UIStepper!
    
    
    
    
    
    
    
    
    
    @IBAction func switchChanged(_ sender: Any) {
        print("\(UISwitch.isOn)")
        print("\(UISwitch.hashValue)")
        
    }
    
    @IBAction func touchesEnded(_ sender: Any) {
        print("\(UISlider.value)")
        
    }
    
    @IBAction func stepperchanged(_ sender: Any) {
        print("\(UIStepper.value)")
        
       
        UISlider.value = Float(UIStepper.value)+Float(UISlider.value)
        
         print("\(UISlider.value)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    @IBAction func btnConfirmCliker(_ sender: Any) {
        
        lbName.text = "zuobangning"
        let button=sender as! UIButton;
        button.setTitle("ok", for: UIControl.State.normal)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesbega")
      if let touch=touches.first{
          let loc=touch.location(in:self.touchView)
          print("\(loc)")
          if(self.touchView.bounds.contains(loc)){
              self.touchView.backgroundColor = UIColor.red
           }else{
               self.touchView.backgroundColor=UIColor.green
           }
       }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("abcdeeee")
    }
    
    
    
    
    
    
    
    
}





