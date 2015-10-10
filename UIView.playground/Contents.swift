import UIKit

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
view.backgroundColor = UIColor.yellowColor()

let shadowView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
shadowView.layer.masksToBounds = false
shadowView.layer.shadowOffset = CGSize(width:1, height:1)
shadowView.layer.shadowColor = UIColor.blackColor().CGColor
shadowView.layer.shadowRadius = 4
shadowView.layer.shadowOpacity = 0.8
shadowView.layer.cornerRadius = 5
shadowView.backgroundColor = UIColor.redColor()
view.addSubview(shadowView)
