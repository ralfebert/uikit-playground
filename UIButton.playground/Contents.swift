import UIKit
import PlaygroundSupport

class ButtonViewController : UIViewController {

    var counter = 0

    var label : UILabel!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        label = UILabel()

        let button = UIButton(type: .system)
        button.setTitle("Increment", for: .normal)
        button.tintColor = .red
        button.addTarget(self, action: #selector(updateView), for: .touchUpInside)

        view.addSubview(label)
        view.addSubview(button)

        // Layout

        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            button.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            button.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor),
        ])

        self.view = view

        updateView()
    }

    func updateView() {
        counter += 1
        label.text = "Counter: \(counter)"
    }
    
}


PlaygroundPage.current.liveView = ButtonViewController()
