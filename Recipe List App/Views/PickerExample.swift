//
//  PickerExample.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/22/21.
//

import SwiftUI

struct PickerExample: View {
    
    @State var selectIndex = 1
    
    var body: some View {
        VStack {
            Picker("Tap me", selection: $selectIndex) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            }
            //.pickerStyle(MenuPickerStyle())
            //.pickerStyle(SegmentedPickerStyle())
            .pickerStyle(WheelPickerStyle())
            Text("You have selection : \(selectIndex)")
        }
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
