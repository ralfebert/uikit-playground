import UIKit
import SpriteKit
import PlaygroundSupport

class CircleScene : SKScene {
    
    let circle = SKShapeNode(circleOfRadius: 20)
    
    override init() {
        super.init(size: CGSize.zero)
        self.scaleMode = .resizeFill
        self.backgroundColor = .yellow
        self.circle.fillColor = .red
        self.circle.strokeColor = .clear
        self.addChild(circle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didChangeSize(_ oldSize: CGSize) {
        circle.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            nodeTapped(node: self.atPoint(location))
        }
    }
    
    func nodeTapped(node : SKNode) {
        if node === circle {
            circle.run(SKAction.sequence([
                SKAction.scale(by: 1.5, duration: 0.1),
                SKAction.scale(by: 1/1.4, duration: 0.2)
            ]))
        }
    }
    
}

class ViewController : UIViewController {
    
    override func loadView() {
        
        let view = SKView()
        view.presentScene(CircleScene())
                
        self.view = view
    }
    
}

PlaygroundPage.current.liveView = ViewController()

