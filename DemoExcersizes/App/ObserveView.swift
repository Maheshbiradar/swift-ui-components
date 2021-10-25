//
//  ObserveView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import SwiftUI

struct ObserveView: View {
    @EnvironmentObject var list: Observe
    
    var body: some View {
        VStack {
            Text("\(list.id)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button(action: {
                list.id += 1
            }, label: {
                Text("Click")
            })
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            InsideObserveView()
        }
        .background(Color.gray)
        
       
    }
}

struct ObserveView_Previews: PreviewProvider {
    static var previews: some View {
        ObserveView()
            .environmentObject(Observe())
    }
}
