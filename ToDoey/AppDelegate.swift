//
//  AppDelegate.swift
//  ToDoey
//
//  Created by Kyle DeHoff on 8/16/19.
//  Copyright © 2019 Kyle DeHoff. All rights reserved.
//

import UIKit
import RealmSwift
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        MSAppCenter.start("9d528cc7-4041-4f3e-824b-ca91003f0f75", withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
        
        
        do {
            _ = try Realm()
        } catch {
            print("Error initalizing new realm, \(error)")
        }
        
        
        return true
    }

  
    
}

