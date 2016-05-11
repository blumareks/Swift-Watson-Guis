# My Cognitive App Sentiment

Let's build our GUI

Let’s begin by building a simple app with a submit button, an editable text field, and an output field.

This video shows how we will build an iOS app in Xcode to prepare for the Sentiment Analysis:  https://youtu.be/JwdpzO1y8z4

The GUI consists of a text field, a label and a button.  We will implement these in the storyboard.
When the user presses the button, the text in the text field is sent to Watson which analysis it and returns an opinion which is entered in the label field.
In the first iteration we will take the text in the text field and simply echo it in the label field when we press the button.


## Connect the GUI 

Do the following steps in Main.storyboard to the code in the ViewController file.

### 1. Connect the TextField

In the Main.storyboard:
Right-click on the TextField (contains “This is a very positive message”)
1.	Select New Reference Outlet Collection from drop-down list
2.	Enter textField in the popup dialog.
3.	Insert between Class ViewController and override… 
4.	Click Connect
5.	The result is: 
```swift
@IBOutlet var textField: [UITextField]!
```


The inserted text is:
```swift
@IBOutlet weak var textField: UITextField!
```

### 2. Connect the Button


The inserted text is:
```swift
@IBAction func checkButtonPressed(sender: AnyObject) {
        
    }
```


### 3. Connect the Text Label


The inserted text is:
```swift
@IBOutlet weak var textStatusLabel: UILabel!
```

Let’s test the code we have written so far:

We will now add some code to the checkButtonPressed method.
```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkButtonPressed(sender: AnyObject) {
        NSLog(textField.text!)
        
        //checking sentiment
        
        //setting feedback on sentiment
        textStatusLabel.text = textField.text
    }
}
```


The NSLog method will allow us to log our actions. And setting the textStatusLabel.text to textField.text will allow us to show the output from the textField in the Label field.

Now let’s test this by doing a build and execute our app.

We enter a short text segment in the text field. This text is copied to the label field. Once we have added the Watson Service, Watson will return a Sentiment Analysis, which will be displayed in the Label Field.

See the entire LAB github: https://github.com/blumareks/bluereporter/tree/master/AppWithWatsonSentiment

My blog: [blumareks blogspot](http://blumareks.blogspot.com/2016/03/blue-reporter-v21-gets-cognitive-in.html)

My Twitter handle: [@blumareks](https://twitter.com/blumareks)
