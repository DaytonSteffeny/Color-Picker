//
//  ViewController.swift
//  Color Picker
//
//  Created by Dayton Steffeny on 4/19/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var colors = [Color(colorName: "Red", uiColorPicker: UIColor.red),
                  Color(colorName: "Orange", uiColorPicker: UIColor.orange),
                  Color(colorName: "Yellow", uiColorPicker: UIColor.yellow),
                  Color(colorName: "Green", uiColorPicker: UIColor.green),
                  Color(colorName: "Blue", uiColorPicker: UIColor.blue),
                  Color(colorName: "Purple", uiColorPicker: UIColor.purple)]
   
    @IBOutlet weak var Colors: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].colorName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Colors.text = colors[row].colorName
        self.view.backgroundColor = colors[row].uiColorPicker
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
