//
//  ContentView.swift
//  Landmarks
//
//  Created by 비바 on 2023/01/05.
//

import SwiftUI

struct ContentView: View {  //view protocol
    var body: some View {
            
       LandmarkList()
        
       
    }
}
// 미리보기
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
