//
//  ConvertWordApp.swift
//  ConvertWord
//
//  Created by vitus on 2022/06/11.
//

import SwiftUI

@main
struct ConvertWordApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LaunchView()
                .frame(width: 400, height: 400, alignment: .center)
                .padding() 
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
