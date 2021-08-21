//
//  ContentView.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/20/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        
        /*
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment:.leading) {
                ForEach(model.recipes) { r in
                    HStack() {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width:50, height: 50, alignment:.center)
                            .clipped()
                            .cornerRadius(5.0)
                        Text(r.name)
                        }
                    }
                }
            }
        */
        
        NavigationView {
            List(model.recipes){ r in
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                    label: {
                        HStack() {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width:50, height: 50, alignment:.center)
                                .clipped()
                                .cornerRadius(5.0)
                            Text(r.name)
                    }
                })
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
