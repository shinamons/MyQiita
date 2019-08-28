//
//  ComponentsModel.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsModel {
   var id: Int { get }
}


struct ComponentsModelImpl: ComponentsModel {
    let id: Int
}