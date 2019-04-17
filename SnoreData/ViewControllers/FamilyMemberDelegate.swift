//
//  FamilyMemberDelegate.swift
//  SnoreData
//
//  Created by Cara on 4/16/19.
//  Copyright © 2019 clara. All rights reserved.
//

import Foundation

protocol FamilyMemberDelegate {
    func newfamilyMember(name: String, age: Int16) -> Void
    func modify(familyMember: FamilyMember) -> Void
    func delete(familyMember: FamilyMember) -> Void
}
