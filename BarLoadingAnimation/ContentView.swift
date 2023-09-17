//  /*
//
//  Project: BarLoadingAnimation
//  FIle: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.09.2023
//
//  Status: #Completed | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    
    @State var height0 = 40.0
    @State var height1 = 40.0
    @State var height2 = 70.0
    @State var height3 = 60.0
    @State var height4 = 35.0
    @State var height5 = 85.0
  
    
    var body: some View {
        
        HStack {
        
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height0)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height0)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height1)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height1)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height2)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height2)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height3)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height3)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height4)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height4)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 30, height: height5)
                .foregroundColor(.white)
                .animation(.easeInOut(duration: 0.25), value: height5)
            
        }
        .preferredColorScheme(.dark)
        .onAppear {
            
            Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { Timer in
                
                height0 = Double.random(in: 20...40)
                height1 = Double.random(in: 20...60)
                height2 = Double.random(in: 20...110)
                height3 = Double.random(in: 20...50)
                height4 = Double.random(in: 20...140)
                height5 = Double.random(in: 20...60)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
