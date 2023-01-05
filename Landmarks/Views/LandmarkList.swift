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
                    LandmarkDetail(landmark: landmark)
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
        
        ForEach(["iPhone SE (2nd generation)","iPhone XS Max"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName ))
                .previewDisplayName(deviceName)
        }
    //    LandmarkList()
        
    //        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
