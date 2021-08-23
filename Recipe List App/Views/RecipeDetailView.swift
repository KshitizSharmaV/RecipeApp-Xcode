//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/21/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    @State var selectedServingSize = 2
    
    var body : some View {
        
        ScrollView {
            VStack(alignment:.leading) {
                // Mark : Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // Mark: Recipe Title
                Text(recipe.name)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(Font.custom("Avenir Heavy",size:24))
                
                // Mark : Serving Size Picker
                VStack(alignment:.leading) {
                    Text("Select your serving size")
                        .font(Font.custom("Avenir",size:15))
                    Picker("", selection: $selectedServingSize) {
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }
                    .font(Font.custom("Avenir",size:15))
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width:160)
                    
                }
                .padding()
                
                
                // Mark: Ingredients
                VStack(alignment:.leading){
                    Text("Ingredients")
                        .font(Font.custom("Avenir Heavy",size:16))
                        .padding([.top,.bottom], 5)
                    
                    ForEach(recipe.ingredients) {item in
                        Text("• " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: selectedServingSize) + " " + item.name)
                            .font(Font.custom("Avenir",size:15))
                    }
                }
                .padding(.horizontal)
                
                // Mark: Direction
                VStack(alignment:.leading){
                    
                    Divider()
                    
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy",size:16))
                        .padding([.top,.bottom], 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self) {index in
                        Text(String(index+1)+". "+recipe.directions[index])
                            .padding(.bottom,5)
                            .font(Font.custom("Avenir",size:15))
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // create a dummy recipe
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}

