## Firebase Authentication Tutorial Reference
  * https://youtu.be/1HN7usMROt8
  * Create Firebase Project: https://firebase.google.com/

## Notes
### May 5, 2020
Set up Project
1. Add Firebase to your iOS app (register app)
  i. Get bundle identifier from your project
2. Download generated configuration file
3. Drag configuration file to project
  * Enable "Copy items if needed", "Create groups", and "Add to targets"
4. Add Firebase SDK
  i. Download CocoaPods
  ii. Move to the folder where your project is in (you should see .xcodeproj file on the current directory)
  iii. Type [pod init] in terminal (create Podfile)
  iv. Open Podfile with TextEdit app
  v. Copy and paste [pod 'Firebase/Analytics'] into the file (right before [end])
  vi. Copy and paste [pod 'Firebase/Auth'] into the file (after the previous line)
  vii. Copy and paste [pod 'Firebase/Core'] into the file (after the previous line)
  viii. Copy and paste [pod 'Firebase/Firestore'] into the file (after the previous line)
  x. Type [pod install] in terminal (fetch all the libraries we need)
5. Open .xcworkspace file (generated in the previous step)
  * Check if the project still runs by pressing command + B
6. Add initialization code
  i. Go to Project Name >> Project Name Folder >> AppDelegate.swift 
  ii. Type [import Firebase]
  iii. Type [FirebaseApp.configure()] under didFinishLaunchingWithOptions
  iv. Run the code by pressing command + R
7. Verify installation
8. Go back to the console (it will move automatically)

Develop
1. Set up Sign-in method
  i. Enable Email/Password authentication
  ii. Add user
2. Create database
  i. Start a new collection
  ii. Pass the new user's email address and password to [createUserWithEmail:email:password:completion:]
  iii. Initialize instance of Cloud Firestore by [let db = Firestore.firestore()]