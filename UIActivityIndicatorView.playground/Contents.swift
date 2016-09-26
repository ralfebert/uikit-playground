import UIKit
import PlaygroundSupport

class ActivityViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let activityView = UIActivityIndicatorView()
        activityView.color = .gray
        activityView.startAnimating()

        view.addSubview(activityView)

        // Layout

        activityView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)

        ])

        self.view = view
    }

}

PlaygroundPage.current.liveView = ActivityViewController()