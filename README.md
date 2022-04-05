# UIKit to SwiftUI to UIKit project

This project regards a sample App whose purpose is to demonstrate the way in which UIKit and SwiftUI can communicate between them. 

The App is made up of two UIViewControllers and a main SwiftUI view that is composed by different subViews. 

![ezgif com-gif-maker](https://user-images.githubusercontent.com/80886612/161851755-c6e16a90-fc7a-475d-9d6d-5ca63eece45a.gif)

Inside the main UIViewController it is possible to pick an image whose datas are then passed to a SwiftUI view. This one is then responsible for adding different animations and a ClipShape to the selected Image. 

![ezgif com-gif-maker](https://user-images.githubusercontent.com/80886612/161852276-ca18d2fc-7da2-4e2f-8528-56c32a96bf6b.gif)

The SwiftUI view is then called back inside a secondary UIViewController that, thanks to a View Container and a UIHostingController (embedded inside the first one), is able to show the SwiftUI view with its animations and modifiers.

More over it is possible to activate (or disable) the different animations by means of two switches implemented in UIKit. The different states represent the combination of different SwiftUI subViews. 

![ezgif com-gif-maker-2](https://user-images.githubusercontent.com/80886612/161852848-a948f818-159c-4ef8-b53b-a51f855af128.gif)

The aim of using UIKit elements to trigger specific actions inside the SwiftUI view is the one to demonstrate how it is possible to pass data and manage boolean states.

