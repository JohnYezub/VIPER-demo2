# VIPER-Demo2
This is the simplest approach to show VIPER pattern.
![VIPER-Demo2](./screenshot.gif "VIPER Demo 2")


### Usage:
* `Protocols`
* `Delegates`

 
### Scenario: 
* no storyboard
* SceneDelegate calls Router to create app first screen
* Router creates module and returns Navigation Controller
* This Navigation Controller contains ViewController
* Router acts as a builder, creates Presenter, Interactor and ViewController, connects each of them
* Router is responsible to switch to the second screen
* Once the View did load, view notify presenter
* Presenter asks Interactor to load data
* Interactor creates objects, fetch data and notify the Presenter
* Presenter convert data and ask View to update