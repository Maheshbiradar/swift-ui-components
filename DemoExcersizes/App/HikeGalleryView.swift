//
//  HikeGalleryView.swift
//  DemoExcersizes
//
//  Created by Mahesh on 19/10/21.
//

import SwiftUI

struct HikeGalleryView: View {
    @State var images: [String] = ["d1","d2","e1","e2"]
    @State var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State var selectionCount: Double = 1.0;
    @State var selectedImage: String = "d1"
    
    func switchGrid() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(selectionCount))
    }
    
    var body: some View {
        NavigationView {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                
                Image(selectedImage)
                    .resizable()
                    .padding()
                    .scaledToFit()
                
                
                Slider(value: $selectionCount, in: 2...4, step: 1)
                  .padding(.horizontal)
                  .onChange(of: selectionCount, perform: { value in
                    switchGrid()
                  })
                
                HStack(alignment: .center, spacing: 6) {
                    LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                        ForEach(images, id: \.self) {item in
                            
                            Image(item)
                                .resizable()
                                .padding(.horizontal, 20)
                                .scaledToFit()
                                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(12)
                                .onTapGesture {
                                    selectedImage = item
                                }
                                .animation(.easeOut(duration: 0.5))
                        }
                    })
                }
                .padding()
            })
           
        })
        .navigationBarTitle(Text("Detail"), displayMode: .inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {
              // Shuffle images
                images.shuffle()
            }) {
              Image(systemName: "person.fill")
            }
          }
        }
    }
        
    }
}

struct HikeGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        HikeGalleryView()
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
