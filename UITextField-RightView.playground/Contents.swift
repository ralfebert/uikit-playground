import UIKit
import PlaygroundSupport

class TextFieldViewController : UIViewController, UITextFieldDelegate {

    var textFieldWithButton : UITextField!
    var textFieldWithActivity : UITextField!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        // Text Field with Button

        textFieldWithButton = UITextField()
        textFieldWithButton.borderStyle = .roundedRect
        textFieldWithButton.text = "Text Field with Button"

        let buttonImage = UIImage(named: "magnify")!
        let button = UIButton(type: .system)
        button.setImage(buttonImage, for: .normal)
        button.sizeToFit()

        textFieldWithButton.rightView = button
        textFieldWithButton.rightViewMode = .always
        view.addSubview(textFieldWithButton)

        // Text Field with Activity

        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = .gray
        activityIndicator.startAnimating()
        activityIndicator.sizeToFit()
        activityIndicator.bounds.size.width += 10

        textFieldWithActivity = UITextField()
        textFieldWithActivity.borderStyle = .roundedRect
        textFieldWithActivity.text = "Active Text Field"

        view.addSubview(textFieldWithActivity)

        textFieldWithActivity.rightView = activityIndicator
        textFieldWithActivity.rightViewMode = .always
        view.addSubview(textFieldWithButton)

        self.view = view

        // Layout

        textFieldWithButton.translatesAutoresizingMaskIntoConstraints = false
        textFieldWithActivity.translatesAutoresizingMaskIntoConstraints = false
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            textFieldWithButton.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20),
            textFieldWithButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            textFieldWithButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor),

            textFieldWithActivity.leadingAnchor.constraint(equalTo: textFieldWithButton.leadingAnchor),
            textFieldWithActivity.trailingAnchor.constraint(equalTo: textFieldWithButton.trailingAnchor),
            textFieldWithActivity.topAnchor.constraint(equalTo: textFieldWithButton.bottomAnchor, constant: 10),
        ])

    }

}

PlaygroundPage.current.liveView = TextFieldViewController()
