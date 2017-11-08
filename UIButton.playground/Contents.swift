import UIKit
import PlaygroundSupport

class ButtonViewController : UIViewController {

    var counter = 0

    var label : UILabel!
    var button : UIButton!
    var starButton : UIButton!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        label = UILabel()

        button = UIButton(type: .system)
        button.setTitle("Increment", for: .normal)
        button.tintColor = .red
        button.addTarget(self, action: #selector(updateView), for: .touchUpInside)

        starButton = UIButton(type: .system)
        starButton.setImage(UIImage(named: "star"), for: .normal)
        starButton.addTarget(self, action: #selector(toggleStarred), for: .touchUpInside)

        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(starButton)

        // Layout

        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        starButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            button.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 20),
            button.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor),

            starButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            starButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])

        self.view = view

        self.starred = false
        updateView()
    }

    @objc func updateView() {
        counter += 1
        label.text = "Counter: \(counter)"
    }

    @objc func toggleStarred() {
        self.starred = !self.starred
    }

    var starred = false {
        didSet {
            starButton.tintColor = starred ? .orange : .gray
        }
    }
    
}


PlaygroundPage.current.liveView = ButtonViewController()
