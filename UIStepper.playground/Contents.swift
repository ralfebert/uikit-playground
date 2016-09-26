import UIKit
import PlaygroundSupport

class StepperViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let stepper = UIStepper()

        view.addSubview(stepper)

        // Layout

        stepper.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stepper.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            stepper.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])

        self.view = view
    }
    
}

PlaygroundPage.current.liveView = StepperViewController()