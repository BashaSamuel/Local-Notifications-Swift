//
//  ViewController.swift
//  LocalNotifications
//
//  Created by apple on 2/8/20.
//  Copyright © 2020 Terasoftware. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func triggerNotification (_ Sender: Any){
        
        print("Hi")
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.body = "This isa Local notifiction"
        content.title = "Reminder"
        content.sound = .default
        
        let triggers = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: triggers)
        center.add(request){
            (error) in
            if error != nil{
                print("error = \(error?.localizedDescription ?? "Error Local Notification")")
                
            }
        }
        
    }
}

