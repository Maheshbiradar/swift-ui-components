//
//  InsideObserveView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 20/10/21.
//

import SwiftUI

struct InsideObserveView: View {
    @EnvironmentObject var data: Observe
    
    var body: some View {
        VStack {
            Text("\(data.id)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button(action: {
                data.id += 1
            }, label: {
                Text("Click")
            })
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .background(Color.gray)
    }
}

struct InsideObserveView_Previews: PreviewProvider {
    static var previews: some View {
        InsideObserveView()
            .environmentObject(Observe())
    }
}
