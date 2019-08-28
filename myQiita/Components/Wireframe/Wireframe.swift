//
//  ComponentsWireframe.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import UIKit

protocol ComponentsWireframe: class {
    
}


class ComponentsWireframeImpl: ComponentsWireframe {
    private weak var viewController: UIViewController!
    
    init(
        viewController: UIViewController
        ) {
        self.viewController = viewController
    }
}