import UIKit
import PlaygroundSupport

class ImageViewController : UIViewController {

    override func loadView() {

        // UI

        let view = UIView()
        view.backgroundColor = .white

        let image = UIImage(named: "Apple.jpg")
        let imageView = UIImageView(image: image)

        view.addSubview(imageView)

        // Layout

        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])

        self.view = view
    }
    
}

PlaygroundPage.current.liveView = ImageViewController()