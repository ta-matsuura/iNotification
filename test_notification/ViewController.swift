//
//  ViewController.swift
//  test_notification
//
//  Created by txm on 2015/07/28.
//  Copyright (c) 2015年 txm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBAction func tapNotification(sender: AnyObject) {
//        
//        var notification = UILocalNotification()
//        notification.fireDate = NSDate()	// すぐに通知したいので現在時刻を取得
//        notification.timeZone = NSTimeZone.defaultTimeZone()
//        notification.alertBody = "message"
//        notification.alertAction = "OK"
//        notification.soundName = UILocalNotificationDefaultSoundName
//        UIApplication.sharedApplication().presentLocalNotificationNow(notification)
//        
//    }
    
    @IBAction func tapHandler(sender: AnyObject) {
        //以下で登録処理
        var notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)//５秒後
        notification.timeZone = NSTimeZone.defaultTimeZone()
        notification.alertBody = "swift-saralymanからの通知だよ"
        notification.alertAction = "OK"
        //notification.soundName = UILocalNotificationDefaultSoundName
        //notification.soundName = "18am13.wav"
        notification.soundName = "Pong-90dB.caf"

        UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

