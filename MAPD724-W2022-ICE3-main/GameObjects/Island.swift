import GameplayKit
import SpriteKit

class Island: GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.y <= -730) {
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 730
        // get a pseudo random number -313 to 313
        let randomX:Int = (randomSource?.nextInt(upperBound: 616))! - 313
        position.x = CGFloat(randomX)
        isCollding = false
    }
    
    override func Start() {
        Reset()
        zPosition = 1
        verticalSpeed = 5.0
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    func Move() {
        position.y -= verticalSpeed!
    }
}
