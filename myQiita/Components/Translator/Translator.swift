//
//  ComponentsTranslator.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsTranslator {
    func translate(from model: ComponentsModel) -> ComponentsEntity
    func translate(from entity: ComponentsEntity) -> ComponentsModel
}


struct ComponentsTranslatorImpl: ComponentsTranslator {
   func translate(from model: ComponentsModel) -> ComponentsEntity {
       return ComponentsEntityImpl(id: model.id)
   }
   func translate(from entity: ComponentsEntity) -> ComponentsModel {
       return ComponentsModelImpl(id: entity.id)
   }
}