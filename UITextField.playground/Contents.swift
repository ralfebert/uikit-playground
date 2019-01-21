import UIKit
import PlaygroundSupport

class TextFieldViewController : UIViewController, UITextFieldDelegate {

    var label : UILabel!
    var textField : UITextField!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.text = "Hello world!"
        view.addSubview(textField)

        label = UILabel()
        view.addSubview(label)

        self.view = view

        // Layout

        textField.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20),
            textField.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: margins.trailingAnchor),

            label.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            label.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
        ])

        // Events

        textField.addTarget(self, action: #selector(updateLabel), for: UIControl.Event.editingChanged)

        updateLabel()
    }

    @objc func updateLabel() {
        self.label.text = textField.text
    }

}

PlaygroundPage.current.liveView = TextFieldViewController()
