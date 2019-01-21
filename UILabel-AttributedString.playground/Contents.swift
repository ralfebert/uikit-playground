import UIKit
import PlaygroundSupport

class LabelViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()

        let attributedString = NSAttributedString(string: "hello", attributes: [NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue, NSAttributedString.Key.foregroundColor : UIColor.red])

        label.attributedText = attributedString

        view.addSubview(label)

        // Layout

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])

        self.view = view
    }
    
}

PlaygroundPage.current.liveView = LabelViewController()
