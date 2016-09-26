import UIKit
import PlaygroundSupport

class TextViewController : UIViewController {

    override func loadView() {

        let textView = UITextView()
        textView.text = "Hello World!\nHello Playground!"

        self.view = textView
    }
    
}

PlaygroundPage.current.liveView = TextViewController()