//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/21/21.
//

import SwiftUI

struct RecipeTabView: View {
  
    @State var tabIndex = 1
    
    var body : some View {
        
        TabView (selection : $tabIndex) {
           
            Text("FeaturedView")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName:"list.bullet")
                        Text("List")
                }
            }

        }
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews : some View {
        RecipeTabView()
    }
}
