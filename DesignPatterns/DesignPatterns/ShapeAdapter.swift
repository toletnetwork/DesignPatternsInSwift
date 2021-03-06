//
//  ShapeAdapter.swift
//  DesignPatterns
//
//  Created by Nishant Sharma on 5/11/19.
//  Copyright © 2019 Nishant Sharma. All rights reserved.
//

import Foundation
class Square
{
    var side = 0
    
    init(side: Int)
    {
        self.side = side
    }
}

protocol Rectangle
{
    var width: Int { get }
    var height: Int { get }
}

extension Rectangle
{
    var area: Int
    {
        return self.width * self.height
    }
}

class SquareToRectangleAdapter : Rectangle
{
    private let square: Square
    
    init(_ square: Square)
    {
        self.square = square
    }
    
    var width: Int { return square.side }
    var height: Int { return square.side }
}
