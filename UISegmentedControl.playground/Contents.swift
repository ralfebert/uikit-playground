import UIKit
import PlaygroundSupport

class SegmentsViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let segmentedControl = UISegmentedControl(items: ["A", "B", "C"])

        view.addSubview(segmentedControl)

        // Layout

        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ])

        self.view = view
    }

}

PlaygroundPage.current.liveView = SegmentsViewController()