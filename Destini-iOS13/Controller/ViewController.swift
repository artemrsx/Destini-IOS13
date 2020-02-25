import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain();
    
    
    @IBAction func choiceAction(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!);
        updateUI();
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.story[storyBrain.activeStoryIdx].title;
        choice1Button.setTitle(storyBrain.story[storyBrain.activeStoryIdx].choice1, for: .normal);
        choice2Button.setTitle(storyBrain.story[storyBrain.activeStoryIdx].choice2, for: .normal);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.updateUI();
    }
}
