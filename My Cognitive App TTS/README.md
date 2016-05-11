# My Cognitive App Text-To-Speech
Let’s bring up the Xcode Development Environment
We may want to tall our project “Text to Speech” or something else descriptive.

## Let's build our GUI

So we’ll begin by building a simple app with an editable text field and a button.
This time we will not need a Label field for the output, because Watson will provide speech output
So when the user presses the button, the text in the text field is sent to Watson which analysis it and returns a spoken version of the text
In the first iteration we will take the text in the text field and simply echo it in the debug field when we press the button. Just so we can see that the GUI works correctly
So we begin by dragging and dropping a Text Field and a Button into the Storyboard. Then after we have positioned them to our liking, we will connect the Text field in the Main.storyboard to the code in the ViewController file

### 1. TextField

In the Main.storyboard:

Right-click on the TextField (contains “Hello This is Watson Speaking”)
1.	Select New Reference Outlet Collection from drop-down list
2.	Enter speakText in the popup dialog.
3.	Insert between Class ViewController and override… 
4.	Click Connect
5.	The result is: 
```swift
@IBOutlet weak var speakText: [UITextField]!
```

### 2. Connect the Button

We now connect the Button in the same way.
Right-click on the TextField (contains “Watson Speaking”)
1.	Select Touch up Inside from drop-down list
2.	Enter speakButtonPressed in the popup dialog.
3.	Insert before the end of the Class ViewController
4.	Click Connect
5.	The result is:
```swift
@IBAction func speakButtonPressed(sender: AnyObject) {
}
```

Let’s test the code we have written so far.

We will now add some code to the speakButtonPressed method.
```swift
Import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func speakButtonPressed(sender: AnyObject) {
        NSLog(“Speak button pressed, speak:” + speakText.text!)
        
       //add Watson Service         

    }
}
```

The NSLog method will allow us to log our actions. 

Now let’s test this by doing a build and execute our app.

We enter a short text segment in the text field. This text is written to the log window. Soon, when we have added the Watson Text to Speech Service, Watson will speak the words in the Text Field.
The sleep command is necessary to vocalize the spoken text before the thread is being closed. Experimenting with the sleep length might help shorten or make the speaking thread longer.

The GUI is now working.  

See the entire LAB github: https://github.com/blumareks/bluereporter/tree/master/AppWithWatsonTTS

My blog: [blumareks blogspot](http://blumareks.blogspot.com/2016/03/blue-reporter-v21-gets-cognitive-in.html)

My Twitter handle: [@blumareks](https://twitter.com/blumareks)
