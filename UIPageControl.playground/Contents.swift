import UIKit
import PlaygroundSupport

class PageControlViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .gray

        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3

        view.addSubview(pageControl)

        // Layout

        pageControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])

        self.view = view
    }

}

PlaygroundPage.current.liveView = PageControlViewController()