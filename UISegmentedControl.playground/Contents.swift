import UIKit
import PlaygroundSupport

class SegmentsViewController : UIViewController {

    let items = ["A", "B", "C"]

    var label : UILabel!
    var segments : UISegmentedControl!

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        label = UILabel()

        segments = UISegmentedControl(items: items)
        segments.addTarget(self, action: #selector(updateView), for: .valueChanged)

        view.addSubview(label)
        view.addSubview(segments)

        // Layout

        label.translatesAutoresizingMaskIntoConstraints = false
        segments.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            segments.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segments.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),

            label.topAnchor.constraint(equalTo: segments.bottomAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: segments.centerXAnchor),

        ])

        self.view = view

        updateView()
    }

    @objc func updateView() {
        let idx = segments.selectedSegmentIndex
        let current = (idx == UISegmentedControl.noSegment) ? "none" : items[idx]
        label.text = "Current segment: \(current)"
    }
    
}


PlaygroundPage.current.liveView = SegmentsViewController()
