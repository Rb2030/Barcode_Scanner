## Barcode Scanner ## 


A small app allowing a user to search for UPC's on their DVD's, games etc.

 ### Requirements ###
 
- Xcode 9 or higher
- Cocoa pods Gem
- Git

### Setup ###

- `git clone https://github.com/Rb2030/Barcode_Scanner.git`
- `cd Barcode_Scanner`
- `pod install`
- `open Barcode_Scanner.xcworkspace`
- `press play after Xcode opens`


### Improvements ### 

Unfortunately I did not have enough free time to fully concentrate on this task (due to some hardware issues over the weekend), this was unfortunate as there are a few items which I would like to add/ improve upon:

- Unit/Integration Tests

- A cancel/X button in the corner of the upc scanning screen, which takes the user back to the InitialViewController.

- At the time of writing this, I also haven't yet implemented the display of the JSON data in a UILabel, which I would also like to add.

- Also at the time of writing this it seems like the JSON response is only returning the data after clicking at least one extra number 

- Adding error handling using Alert Views to indicate if the user attempts to add more than 13 digits to the UPC.

- Refactor `APIService.swift`

- The scanning screen also isn't yet fully functioning, so that would also need to be completed.

