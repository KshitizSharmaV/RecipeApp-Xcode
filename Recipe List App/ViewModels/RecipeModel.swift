//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/21/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Parse the local json file
        self.recipes = DataService.getLocalData()
    }
    
}
