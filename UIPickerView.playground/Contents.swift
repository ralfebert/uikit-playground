import UIKit
import PlaygroundSupport

class PickerData : NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    let fruits = ["Apple", "Orange", "Banana"]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
}

let pickerData = PickerData()
let pickerView = UIPickerView()
pickerView.backgroundColor = .white
pickerView.dataSource = pickerData
pickerView.delegate = pickerData
pickerView.reloadAllComponents()

PlaygroundPage.current.liveView = pickerView
