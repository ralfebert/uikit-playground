import UIKit
import XCPlayground

class PlayPickerData : NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    let fruits = ["Apple", "Orange", "Banana"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
}

let pickerData = PlayPickerData()
let pickerView = UIPickerView()
pickerView.dataSource = pickerData
pickerView.delegate = pickerData

// Show in playground timeline
pickerView.backgroundColor = UIColor.whiteColor()
XCPShowView("pickerView", view: pickerView)
