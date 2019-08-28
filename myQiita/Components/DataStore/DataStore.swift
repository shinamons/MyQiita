//
//  ComponentsDataStore.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsDataStore {
    func fetch(_ closure: (ComponentsEntity) -> Void) throws 
}


struct ComponentsDataStoreImpl: ComponentsDataStore {
    func fetch(_ closure: (ComponentsEntity) -> Void) throws  {
        // you can write get entity method
    }
}