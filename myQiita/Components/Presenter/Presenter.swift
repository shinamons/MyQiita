//
//  ComponentsPresenter.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import Foundation

protocol ComponentsPresenter: class {
    
}


class ComponentsPresenterImpl: ComponentsPresenter {
    private weak var view: ComponentsView?
    private let wireframe: ComponentsWireframe
    private let useCase: ComponentsUseCase
    
    init(
        view: ComponentsView,
        wireframe: ComponentsWireframe,
        useCase: ComponentsUseCase
        ) {
        self.view = view
        self.useCase = useCase
        self.wireframe = wireframe
    }
}