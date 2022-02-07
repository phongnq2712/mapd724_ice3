import GameplayKit
import SpriteKit

class Ocean: GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.y <= -773) {
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 773
    }
    
    override func Start() {
        zPosition = 0
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
