import UIKit
import PlaygroundSupport

class DatePickerViewController : UIViewController {

    override func loadView() {

        // UI
        view = UIView()
        view.backgroundColor = .white

        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date

        view.addSubview(datePicker)

        // Layout

        datePicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        self.view = view
    }
    
}

PlaygroundPage.current.liveView = DatePickerViewController()