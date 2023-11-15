//
//  DemoShopIOSApp.swift
//  DemoShopIOS
//
//  Created by Mark Ho on 21/8/2022.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct DemoShopIOSApp: App {
    init() {
        AppCenter.start(withAppSecret: "10e49c7d-709f-4702-8cd3-f4b0e3850610", services:[
          Analytics.self,
          Crashes.self
        ])
    }
    
    var body: some Scene {
        WindowGroup {
            RootView {
                //Put the view you want your app to present here
                ProductListView(categoryId: 0)
                    //add necessary environment objects here
            }
        }
    }
}
