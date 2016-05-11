# Swift-Watson-Guis

Let's bring up the Xcode Development Environment









Let's build our GUI

Let’s begin by building a simple app with a submit button, an editable text field, and an output field.

This video shows how we will build an iOS app in Xcode to prepare for the Visual Analysis: https://youtu.be/GcXXm8UId4A

The GUI consists of a text field, a label and a button.  We will implement these in the storyboard.
When the user presses the button, the URL in the text field is sent to Watson which analysis the provided picture in the URL and returns a resulting analysis  in the JSON form of the image with a confidence score.
In the first iteration we will take the text in the text field and simply echo it in the label field when we press the button.



Connect the GUI in Main.storyboard to the code in the ViewController file:




Connect the TextField
https://farm4.staticflickr.com/3754/11702702564_1fc3c669ba_m.jpg

In the Main.storyboard:

Right-click on the TextField (contains the URL to a graphics file of your choice)
1.	Select New Reference Outlet Collection from drop-down list
2.	Enter urlText as the Name  in the popup dialog.
3.	Insert between Class ViewController and override… 
4.	Click Connect
5.	The result is: @IBOutlet var urlText: [UITextField]!


Connect the Label Field



Right-click on the LabelField (Currently empty)
1.	Select New Reference Outlet Collection from drop-down list
2.	Enter analysisTextLabel as the Name  in the popup dialog.
3.	Insert after the urlText  
4.	Click Connect
5.	The result is: @IBOutlet var analysislTextLabel: [UITextField]!



Connect the Button


Right-click on the Button 
1.	Select Touch Up Inside from drop-down list
2.	Enter analysisButtonPressed as the Name  in the popup dialog.
3.	Insert at the end of the  ViewController Class
4.	Click Connect
5.	The result is: @IBAction func analysisButtonPressed(sender: AnyObject) {            
   }




We will now add some code to the analysisButtonPressed method.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlText: UITextField!
    @IBOutlet weak var analysisTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func analysisButtonPressed(sender: AnyObject) {
        NSLog("Button pressed")
        NSLog("URL: "+urlText.text!)
        analysisTextLabel.text="Analysis of the URL " + urlText.text!
        
    }
}





The NSLog method will allow us to log our actions. And setting the textStatusLabel.text to textField.text will allow us to show the output from the textField in the Label field.

Now let’s test this by doing a build and execute our app.

We enter a url to an image file in the text field. This name is printed to the log file. Once we have added the Watson Service, Watson will return an analysis of the image to the label field.



We press the Visual Analysis button



The output in the Log area
