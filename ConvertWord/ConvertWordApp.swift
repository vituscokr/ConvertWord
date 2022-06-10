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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
