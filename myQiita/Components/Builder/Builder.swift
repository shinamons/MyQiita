//
//  ComponentsBuilder.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import UIKit

protocol ComponentsBuilder {
    func build() -> UIViewController
}


struct ComponentsBuilderImpl: ComponentsBuilder {
    func build() -> UIViewController {
        let viewController = ComponentsViewController()
        viewController.inject(
            presenter: ComponentsPresenterImpl(
                view: viewController,
                wireframe: ComponentsWireframeImpl(
                    viewController: viewController
                ),
                useCase: ComponentsUseCaseImpl(
                    repository: ComponentsRepositoryImpl (
                        dataStore: ComponentsDataStoreImpl()
                    ),
                    translator: ComponentsTranslatorImpl()
                )
            )
        )
        return viewController
    }
}