//
//  Appointments.swift
//  Stylist
//
//  Created by Ashli Rankin on 4/17/19.
//  Copyright © 2019 Ashli Rankin. All rights reserved.
//

import Foundation

enum AppointmentStatus: String, CaseIterable {
    case pending
    case inProgress
    case completed
    case canceled
}


struct Appointments{
    let providerId:String
    let userId:String
    let services:[String]
    let appointmentTime:String
    let prices:[String]
    let status: String
    let documentId: String
   
    init(dict:[String:Any]){
        self.providerId = dict["providerId"] as? String ?? "no providerId found"
        self.userId = dict["userId"] as? String ?? "no user id found"
        self.services = dict["services"] as? [String] ?? [String]()
        self.appointmentTime = dict["appointmentTime"] as? String ?? "no appointment time found"
        self.prices = dict["prices"] as? [String] ?? [String]()
        self.status = dict["status"] as? String ?? "pending"
        self.documentId = dict["documentId"] as? String ?? "no document id"
    }
}
