import UIKit
import PlaygroundSupport

class ButtonViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.tintColor = .red

        view.addSubview(button)

        // Layout

        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])

        self.view = view
    }
    
}

PlaygroundPage.current.liveView = ButtonViewController()