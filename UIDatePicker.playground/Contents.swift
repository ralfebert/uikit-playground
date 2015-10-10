import UIKit
import XCPlayground

let datePicker = UIDatePicker()
datePicker.datePickerMode = .Date

// Show in playground timeline
datePicker.backgroundColor = UIColor.whiteColor()
XCPShowView("datePicker", view: datePicker)

