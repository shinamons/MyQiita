//
//  AuthorizeEntity.swift
//  myQiita
//
//  Created by aimon on 2019/08/28.
//  Copyright © 2019 a.naga. All rights reserved.
//

import Foundation
import Himotoki

struct AuthorizeEntity: Himotoki.Decodable {
    
    let id: Int
    let name: String
    
    static func decode(_ e: Extractor) throws -> AuthorizeEntity {
        return try Contest(id: e <| "id",
                           name: e <| "name")
    }
}
