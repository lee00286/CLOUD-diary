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
 * Download CocoaPods
 * Move to the folder where your project is in (you should see .xcodeproj file on the current directory)
 * Type [pod init] in terminal (create Podfile)
 * Open Podfile with TextEdit app
 * Copy and paste [pod 'Firebase/Analytics'] into the file (right before [end])
 * Copy and paste [pod 'Firebase/Auth'] into the file (after the previous line)
 * Copy and paste [pod 'Firebase/Core'] into the file (after the previous line)
 * Copy and paste [pod 'Firebase/Firestore'] into the file (after the previous line)
 * Type [pod install] in terminal (fetch all the libraries we need)
5. Open .xcworkspace file (generated in the previous step)
 * Check if the project still runs by pressing command + B
6. Add initialization code
 * Go to Project Name >> Project Name Folder >> AppDelegate.swift 
 * Type [import Firebase]
 * Type [FirebaseApp.configure()] under didFinishLaunchingWithOptions
 * Run the code by pressing command + R
7. Verify installation
8. Go back to the console (it will move automatically)

Develop
1. Set up Sign-in method
  * Enable Email/Password authentication
  * Add user
2. Create database
  * Start a new collection
  * Pass the new user's email address and password to [createUserWithEmail:email:password:completion:]
  * Initialize instance of Cloud Firestore by [let db = Firestore.firestore()]
