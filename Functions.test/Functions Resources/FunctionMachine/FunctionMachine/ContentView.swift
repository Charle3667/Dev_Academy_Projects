//
//  ContentView.swift
//  FunctionMachine
//
//  Created by Tom Phillips on 11/10/21.
//

import SwiftUI

/*
 The below code is a 'Function Machine' example, meant to show you how to write functions and attach them to Buttons in your UI to make your app more interactive.
 
 On the left, there is a Text Field for entering an input value, and on the right is where the output value will be printed.
 
 The black box represents whatever action happens when the 'Run Function' button is tapped.
 
 There are three example functions below that need to be written. When the logic is written, you can add that function to the 'action' parameter of the 'Run Function' button to have the code run.
 
 
 The clear() function and Clear button are already connected and are an example of how you can write a function and add it to the action of a button.
 */
struct ContentView: View {

    @State private var input = ""
    @State private var output = ""
    
    var body: some View {
        VStack {
            Text("Function Machine")
                .font(.largeTitle)
            Spacer()
            

            HStack {
                TextField("Input ➡️", text: $input)
                    .padding(.leading, 10)
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width / 5, height: UIScreen.main.bounds.width / 5)
                Text("Output ➡️ \(output)")
                    .padding(.leading, 20)
            }
            .padding()
            
            // When creating a button, the 'action' will define what code will run when the button is tapped. As you fill out the functions below, be sure to change the action here and rerun the app to plug in the functions
            Button("Run Function", action: celebrate)
                .padding()
            
            
            Button("Clear", action: clear)
            Spacer()
        }
    }
    
    /*
    This is an example function. When this runs the variables for 'input' and 'output' are both set back to empty strings. This function is set to be the 'action' of the 'Clear' button on line 36, meaning this code will be run whenever the 'Clear' button is tapped.
    */
    func clear() {
        input = ""
        output = ""
    }
    
    /*
     Write a function called greeting() that takes the 'input value' and sets the output value to "Hello, " plus the 'input value'
     
     Example: If the user changes the input to 'World', the output reads 'Hello, World
     */
    func greeting() {
        output = "Hello, \(input)"
    }
    
    /*
    Write a function called celebrate()
     - If the input value is 'friday' or 'saturday', change the output value to "YAYYYYYYYY"
     - If the input value is anything else, change the output value to "BOOOOOOOOOO"
     */
    func celebrate() {
        if input.lowercased() == "friday" || input.lowercased() == "saturday"
            { output = "Yay!"
        }
        if input.lowercased() == "sunday" || input.lowercased() == "monday" || input.lowercased() == "tuesday" || input.lowercased() == "wednesday" || input.lowercased() == "thursday" {
            output = "Oh no!"
        }
        else { output = "Input day of the week." }
        }
        
        
        
    
    /*
    Write a function called fizzBuzz()
     -If the input is a number divisble by 3, change the output to "FIZZ".
     -If the input is divisible by 5, change the output to "BUZZ".
     -If the input is divisible by 3 AND 5, change the output to "FIZZBUZZ".
     -Otherwise, the output should look like the input
     */
    func fizzBuzz() {

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
