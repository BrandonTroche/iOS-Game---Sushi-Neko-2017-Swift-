import SpriteKit

class Character: SKSpriteNode {
    
    /* Character side */
    var side: Side = .left {
        didSet {
            if side == .left {
                self.xScale = 1
                self.position.x = 70
            } else {
                /* An easy way to flip an asset horizontally is to invert the X-axis scale */
                self.xScale = -1
                self.position.x = 252
            }
            
            /* Load/Run the punch action */
            let punch = SKAction(named: "Punch")!
            run(punch)
        }
    }
    
    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
