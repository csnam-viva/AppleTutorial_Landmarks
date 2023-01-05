//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 비바 on 2023/01/05.
//

import SwiftUI

@main //  앱의 진입점
struct LandmarksApp: App {  //public protocol App
    
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
