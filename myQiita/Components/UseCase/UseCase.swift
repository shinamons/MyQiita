//
//  ComponentsUseCase.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsUseCase {
    func fetch(_ closure: (ComponentsModel) -> Void) throws 
}


struct ComponentsUseCaseImpl: ComponentsUseCase {
    private let repository: ComponentsRepository
    private let translator: ComponentsTranslator
    
    init(
        repository: ComponentsRepository, 
        translator: ComponentsTranslator
        ) {
        self.repository = repository
        self.translator = translator
    }
    
    func fetch(_ closure: (ComponentsModel) -> Void) throws  {
        try repository.fetch { 
           closure(
              translator.translate(from: $0)
           )
      }
    }
}