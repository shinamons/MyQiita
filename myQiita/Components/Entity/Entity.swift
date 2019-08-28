//
//  ComponentsEntity.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsEntity {
    var id: Int { get }
}


struct ComponentsEntityImpl: ComponentsEntity {
    let id: Int
}