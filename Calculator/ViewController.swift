//
//  ViewController.swift
//  Calculator
//
//  Created by Adrian Atanasov on 10/26/19.
//  Copyright © 2019 Adrian Atanasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var output: UITextField!
    @IBOutlet weak var input: UITextField!
    
    struct conv{
    var label: String
    var input: String
    var output: String
    }
    var menu = [conv(label: "Fahrenheit to celcius", input: "°F°", output: "°C"),
                conv(label: "Celcius to Fahrenheit", input: "°C", output: "°F"),
                conv(label: "Miles to Kilometers", input: "mi", output: "km"),
                conv(label: "Kilometers to Miles", input: "km", output: "mi")]

    @IBAction func convert(_ sender: Any) {
        let sheet = UIAlertController(title: "Converter", message: "Choose a Converter", preferredStyle: UIAlertController.Style.actionSheet)
       
        sheet.addAction(UIAlertAction(title: "Fahrenheit to celcius", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.output.text?.removeAll()
            self.input.text?.removeAll()
            self.output.textAlignment = .right
            self.output.text?.append(self.menu[0].output)
            self.input.textAlignment = .right
            self.input.text?.append(self.menu[0].input)
        }))
        
        sheet.addAction(UIAlertAction(title: "Celcius to Fahrenheit", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.output.text?.removeAll()
            self.input.text?.removeAll()
            self.output.textAlignment = .right
            self.output.text?.append(self.menu[1].output)
            self.input.textAlignment = .right
            self.input.text?.append(self.menu[1].input)
            
        }))
        
        sheet.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.output.text?.removeAll()
            self.input.text?.removeAll()
            self.output.textAlignment = .right
            self.output.text?.append(self.menu[2].output)
            self.input.textAlignment = .right
            self.input.text?.append(self.menu[2].input)
            
        }))

        sheet.addAction(UIAlertAction(title: "Kilometers to Miles", style: UIAlertAction.Style.default, handler: {
            (UIAlertAction) -> Void in
            self.output.text?.removeAll()
            self.input.text?.removeAll()
            self.output.textAlignment = .right
            self.output.text?.append(self.menu[3].output)
            self.input.textAlignment = .right
            self.input.text?.append(self.menu[3].input)
        }))
        
        sheet.addAction(UIAlertAction(title: "Cancel", style:
            UIAlertAction.Style.cancel, handler: {
            (UIAlertAction) -> Void in
                
        }))
        self.present(sheet, animated: true, completion: nil)
    }
    
    
}

