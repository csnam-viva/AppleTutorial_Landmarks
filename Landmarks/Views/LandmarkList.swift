//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 비바 on 2023/01/05.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /*
        List(landmarks, id: \.id) { Landmark in
            LandmarkRow(landmark: Landmark)
        }
         */
        NavigationView {
            List(landmarks){ landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
