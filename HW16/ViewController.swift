//
//  ViewController.swift
//  HW16
//
//  Created by min-chia on 2019/2/16.
//  Copyright © 2019 min-chia. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var displayTextfield: UITextField!
    var sumikkogurashi = ["角落生物","拉拉熊","鯨鯊先生","憂傷馬戲團","趴趴熊","烤焦麵包","靴下貓","海豹寶寶"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sumikkogurashi.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sumikkogurashi[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayTextfield.text = sumikkogurashi[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

