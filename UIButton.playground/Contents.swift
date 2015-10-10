import UIKit

let buttonView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
let button = UIButton(type: .System)
button.setTitle("Button", forState: .Normal)
button.sizeToFit()
button.center = CGPoint(x: 100, y: 25)
button.tintColor = UIColor.redColor()
buttonView.addSubview(button)
