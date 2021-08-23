//
//  GeometryExample.swift
//  Recipe List App
//
//  Created by Kshitiz Sharma on 8/22/21.
//

import SwiftUI

struct GeometryExample: View {
    var body: some View {
        GeometryReader { geo in
            
            VStack(spacing:0) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.green)
                        .frame(width:geo.size.width, height: geo.size.height/2, alignment: .center)
                        .onTapGesture {
                            print("x:\(geo.frame(in:.local).height),y:\(geo.frame(in:.local).width)")
                            //print("x:\(geo.frame(in:.global).minX),y:\(geo.frame(in:.global).minY)")
                            //print("x:\(geo.frame(in:.local).minX),y:\(geo.frame(in:.local).minY)")
                        }
                    
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width:geo.size.width/1.5, height: geo.size.height/8, alignment: .center)
                        .onTapGesture {
                            print("x:\(geo.frame(in:.local).height),y:\(geo.frame(in:.local).width)")
                        }
                }
                
                HStack(spacing:0){
                    
                    Rectangle()
                        .foregroundColor(.purple)
                        .frame(width:geo.size.width/2, height: geo.size.height/2)
                        .onTapGesture {
                            print("x:\(geo.frame(in:.local).height),y:\(geo.frame(in:.local).width)")
                        }
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width:geo.size.width/2, height: geo.size.height/2)
                        .onTapGesture {
                            print("x:\(geo.frame(in:.local).height),y:\(geo.frame(in:.local).width)")
                    }
                    
                }
                
            }
        }.ignoresSafeArea()
    }
}

struct GeometryExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryExample()
    }
}
