//
//  ComponentsView.swift
//  Kuri
//
//  Created by aimon on 2019/8/28.
//  Copyright © 2019 aimon. All rights reserved.
//

import UIKit

protocol ComponentsView: class {
    
}


class ComponentsViewController: UIViewController {
    
    private var presenter: ComponentsPresenter!
    
    func inject(
        presenter: ComponentsPresenter
        ) {
        self.presenter = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ComponentsViewController: ComponentsView {
    
}