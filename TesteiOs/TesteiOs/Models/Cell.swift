//
//  Cell.swift
//  TesteiOs
//
//  Created by Natalia Favero on 10/09/18.
//  Copyright © 2018 Natalia Favero. All rights reserved.
//

import Foundation

struct Cell:Equatable {
    var id: Int
    var type: Type
    var message: String
    var typefield: TypeField
    var hidden: Bool
    var topSpacing: Int
    var show: Int
    var required: Bool
}

enum Type: Int {
    case field = 1
    case text = 2
    case image = 3
    case checkbox = 4
    case send = 5
}

enum TypeField:Int{
    case text = 1
    case telNumber = 2
    case email = 3
}

func ==(lhs: Cell, rhs: Cell) -> Bool
{
    return lhs.id == rhs.id
        && lhs.type == rhs.type
        && lhs.message == rhs.message
        && lhs.typefield == rhs.typefield
        && lhs.hidden == rhs.hidden
        && lhs.topSpacing == rhs.topSpacing
        && lhs.show == rhs.show
        && lhs.required == rhs.required
}
