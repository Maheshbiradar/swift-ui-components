//
//  Switcher.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import SwiftUI

struct Switcher: View {
    let hikes: [Hike] = Hike.all()
    @State var isValid: Bool = false
    @State var name: String = ""
    @State var colored: Bool = false
    
    var body: some View {
        List{
            VStack(alignment: .leading) {
                Toggle("Valid?", isOn: $isValid)
                
                ForEach(hikes.filter({ hike in
                    hike.isValid == isValid
                }), id: \.id) { item in
                    HikeListItemView(hike: item)
                        .padding()
                }
            }
            VStack {
                Text(name)
                    .background(
                        Color(colored ? .green : .blue
                    ))
                TextField("name", text: $name)
                    
                ButtonView(colored: $colored)
            }
        }
        
       
    }
}

struct Switcher_Previews: PreviewProvider {
    static var previews: some View {
        Switcher()
    }
}

struct ButtonView: View {
    @Binding var colored: Bool
    var body: some View {
        Button(action: {
            colored.toggle()
        }, label: {
            Text("Click Me")
        })
    }
}
