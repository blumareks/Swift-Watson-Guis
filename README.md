# Swift-Watson-Guis

Please find the GUIs for the 3 SWIFT - Watson LABs.

As soon as you fork each of the labs you might want to run Carthage.

The initial setup of the Carthage is the following:

https://github.com/Carthage/Carthage#installing-carthage

We will use the Carthage dependency manager to install libraries used by our app.
To install Carthage on our system, we will download and run the latest release of the Carthage.pkg file: https://github.com/Carthage/Carthage/releases , then follow the on-screen instructions.

Alternatively, only on Xcode 7.x, we can use Homebrew and install the Carthage tool on our system simply by running brew update and brew install carthage. (note: if you previously installed the binary version of Carthage, you should delete /Library/Frameworks/CarthageKit.framework).

If you’d like to run the latest development version (which may be highly unstable or incompatible), simply clone the master branch of the repository, then run make install.

The process of setting up the environment: https://youtu.be/mRUVzehJIpU

Install the Watson SDK
- In a Bash shell in the root directory of your project:
- Enter cat > cartfile
- Enter github "watson-developer-cloud/ios-sdk"
- Enter a new line
- Enter "control+C" to leave the edit
# Run the command: carthage update --platform iOS from the command line at the root of the project. If you receive a compile failure for the framework AlamofireObjectMapper, run the command again.
- Getting all the dependencies to the project with the help of the Carthage:

The process will issue “Fetching”, “Checking out” and “Building scheme” messages for the library components, including at the end a set of warnings that can be ignored. 



Add the SDK to the Xcode project

Create a new Group in your Xcode project called "Framework" under the project name.
And select all the framework files in the Carthage/Build/iOS/ directory of your project (Alamofire, AlamofireObjectMapper, HTTPStatusCodes, ObjectMapper, Starscream). Drag-and-drop those files from Finder into the new "Framework" group inside of your project in Xcode. When the dialog appears, make sure you deselect the option to copy items. This will create a reference to those Framework files without copying them.

This is the list of the framework libraries:


Build target. In the "Build Phases" tab, add a new Copy Files Phase and set its destination to "Frameworks".



Copy all the frameworks that have been added one by one.

Section in Build Phases: "Copy Files":



We will now update info.plist with the ability to call outside services

info.plist:





