import UIKit

// Color constants

UIColor.blackColor()
UIColor.darkGrayColor()
UIColor.lightGrayColor()
UIColor.whiteColor()
UIColor.grayColor()
UIColor.redColor()
UIColor.greenColor()
UIColor.blueColor()
UIColor.cyanColor()
UIColor.yellowColor()
UIColor.magentaColor()
UIColor.orangeColor()
UIColor.purpleColor()
UIColor.brownColor()
UIColor.clearColor()

// Color by component value

UIColor(white: 0.5, alpha: 1.0)
UIColor(hue: 0.5, saturation: 0.4, brightness: 1.0, alpha: 1.0)
UIColor(red: 0.6, green: 1.0, blue: 1.0, alpha: 1.0)

// Color by hex value

extension UIColor {
    convenience init(rgb: Int, alpha: CGFloat) {
        let r = CGFloat((rgb & 0xFF0000) >> 16)/255
        let g = CGFloat((rgb & 0xFF00) >> 8)/255
        let b = CGFloat(rgb & 0xFF)/255
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }

    convenience init(rgb: Int) {
        self.init(rgb:rgb, alpha:1.0)
    }
}

UIColor(rgb: 0xff5410)

