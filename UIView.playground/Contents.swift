import UIKit
import PlaygroundSupport

class ViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let innerView = UIView()
        innerView.backgroundColor = .yellow
        view.addSubview(innerView)

        let shadowView = UIView()
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowOffset = CGSize(width: 1, height: 1)
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowRadius = 4
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.cornerRadius = 5
        shadowView.backgroundColor = .red
        view.addSubview(shadowView)

        // Layout

        shadowView.translatesAutoresizingMaskIntoConstraints = false
        innerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            innerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            innerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            innerView.widthAnchor.constraint(equalToConstant: 80),
            innerView.heightAnchor.constraint(equalToConstant: 80),

            shadowView.topAnchor.constraint(equalTo: innerView.bottomAnchor, constant: 20),
            shadowView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor),
            shadowView.widthAnchor.constraint(equalToConstant: 80),
            shadowView.heightAnchor.constraint(equalToConstant: 80)
        ])

        self.view = view
    }

}

PlaygroundPage.current.liveView = ViewController()