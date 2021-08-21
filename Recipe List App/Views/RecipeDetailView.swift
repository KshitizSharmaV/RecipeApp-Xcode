//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/21/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body : some View {
        NavigationView {
            ScrollView {
                VStack(alignment:.leading) {
                    // Mark : Recipe Image
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                    
                    // Mark: Ingredients
                    VStack(alignment:.leading){
                        Text("Ingredients")
                            .font(.headline)
                            .padding([.top,.bottom], 5)
                        
                        ForEach(recipe.ingredients, id:\.self) {item in
                            Text("• "+item)
                                .padding(.bottom, 1)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Mark: Direction
                    VStack(alignment:.leading){
                        
                        Divider()
                        
                        Text("Directions")
                            .font(.headline)
                            .padding([.top,.bottom], 5)
                        
                        ForEach(0..<recipe.directions.count, id:\.self) {index in
                            Text(String(index+1)+". "+recipe.directions[index])
                                .padding(.bottom,5)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // create a dummy recipe
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}

