import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    var opac = 1.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5 // Changes the opactity of button pressed to 0.5
        
        let seconds = 0.2
        
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) { // Code should exectue after 0.2 delay
            sender.alpha = 1.0 // Bring senders opacity back to regular value
            
        }
       
        
       
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    
}
