import UIKit
import PlaygroundSupport

class ProgressViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.progressTintColor = .red
        progressView.trackTintColor = .lightGray
        progressView.progress = 0.25

        view.addSubview(progressView)

        // Layout

        progressView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        self.view = view
    }
    
}

PlaygroundPage.current.liveView = ProgressViewController()