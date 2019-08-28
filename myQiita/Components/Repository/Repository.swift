//
//  ComponentsRepository.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsRepository {
    func fetch(_ closure: (ComponentsEntity) -> Void) throws 
}


struct ComponentsRepositoryImpl: ComponentsRepository {
    private let dataStore: ComponentsDataStore
    
    init(
        dataStore: ComponentsDataStore
        ) {
        self.dataStore = dataStore
    }
    
    func fetch(_ closure: (ComponentsEntity) -> Void) throws  {
        return try dataStore.fetch(closure)
    }
}