//
//  OAuthAuthorizeDataStore.swift
//  myQiita
//
//  Created by aimon on 2019/08/28.
//  Copyright © 2019 a.naga. All rights reserved.
//

import Foundation
import RxSwift

protocol OAuthAuthorizeDataStore {
    func fetch(_ account: String) -> Observable<Void>
}


struct OAuthAuthorizeDataStoreImpl: ComponentsDataStore {
    func fetch(_ closure: (ComponentsEntity) -> Void) throws {
        print(" aaa ")
    }
}
