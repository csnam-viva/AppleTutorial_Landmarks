//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 비바 on 2023/01/05.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
   
    
    var filiteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite )
        }
    }
    var body: some View {
        /*
        List(landmarks, id: \.id) { Landmark in
            LandmarkRow(landmark: Landmark)
        }
         */
            
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filiteredLandmarks){ landmark in
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
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
//        ForEach(["iPhone SE (2nd generation)","iPhone XS Max"], id: \.self){ deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName ))
//                .previewDisplayName(deviceName)
//        }
        LandmarkList()
            .environmentObject(ModelData())
    //        .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
