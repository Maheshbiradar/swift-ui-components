//
//  HikeListItemView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct HikeListItemView: View {
    var hike: Hike
    
    var body: some View {
        HStack(alignment: .top, spacing: 6, content: {
            Image(hike.image)
                .resizable()
                .scaledToFit()
                .background(Color.gray)
                .frame(width: 80, height: 80, alignment: .leading)
                .cornerRadius(16)
            
            
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(hike.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.accentColor)
                
                Text(hike.description)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
            })
        })
    }
}

struct HikeListItemView_Previews: PreviewProvider {
    static var previews: some View {
        HikeListItemView(hike: Hike.all()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
