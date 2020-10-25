## Firebase Authentication Tutorial Reference
* https://youtu.be/1HN7usMROt8
* Create Firebase Project: https://firebase.google.com/

## Notes
### May 5, 2020
Set up Project
1. Add Firebase to your iOS app (register app)
   * Get bundle identifier from your project
2. Download generated configuration file
3. Drag configuration file to project
   * Enable "Copy items if needed", "Create groups", and "Add to targets"
4. Add Firebase SDK
   1. Download CocoaPods
   1. Move to the folder where your project is in (you should see .xcodeproj file on the current directory)
   1. Type `pod init` in terminal (create Podfile)
   1. Open Podfile with TextEdit app
   1. Copy and paste `pod 'Firebase/Analytics'` into the file (right before `end`)
   1. Copy and paste `pod 'Firebase/Auth'` into the file (after the previous line)
   1. Copy and paste `pod 'Firebase/Core'` into the file (after the previous line)
   1. Copy and paste `pod 'Firebase/Firestore'` into the file (after the previous line)
   1. Type `pod install` in terminal (fetch all the libraries we need)
5. Open `.xcworkspace` file (generated in the previous step)
   * Check if the project still runs by pressing command + B
6. Add initialization code
   1. Go to Project Name >> Project Name Folder >> AppDelegate.swift 
   1. Type `import Firebase`
   1. Type `FirebaseApp.configure()` under didFinishLaunchingWithOptions
   1. Run the code by pressing command + R
7. Verify installation
8. Go back to the console (it will move automatically)

Develop
1. Set up Sign-in method
   1. Enable Email/Password authentication
   1. Add user
2. Create database
   1. Start a new collection
   1. Pass the new user's email address and password to `createUserWithEmail:email:password:completion:`
   1. Initialize instance of Cloud Firestore by `let db = Firestore.firestore()`
