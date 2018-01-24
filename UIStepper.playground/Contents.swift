import UIKit
import PlaygroundSupport

class StepperViewController : UIViewController {

    var label : UILabel!
    var stepper : UIStepper!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        label = UILabel()

        stepper = UIStepper()
        stepper.tintColor = .red
        stepper.addTarget(self, action: #selector(updateView), for: .valueChanged)
        stepper.value = 15
        stepper.minimumValue = -100
        stepper.maximumValue = 100
        stepper.stepValue = 5

        view.addSubview(label)
        view.addSubview(stepper)

        // Layout

        label.translatesAutoresizingMaskIntoConstraints = false
        stepper.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            stepper.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            stepper.centerYAnchor.constraint(equalTo: label.centerYAnchor),
        ])

        self.view = view

        updateView()
    }

    @objc func updateView() {
        label.text = "Counter: \(Int(stepper.value))"
    }
    
}


PlaygroundPage.current.liveView = StepperViewController()
