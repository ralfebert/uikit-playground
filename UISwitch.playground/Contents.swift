import UIKit
import PlaygroundSupport

class SwitchViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let uiswitch = UISwitch()
        uiswitch.isOn = true

        view.addSubview(uiswitch)

        // Layout

        uiswitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            uiswitch.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            uiswitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ])

        self.view = view
    }

}

PlaygroundPage.current.liveView = SwitchViewController()
