//
//  myToDo.swift
//  toDo
//
//  Created by Salma on 11/23/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import Foundation

class myToDo {
    var title: String
    var done: Bool
    
    public init(title:String) {
        self.title = title
        self.done = false
    }
}

extension myToDo {
    public class func getData() -> [myToDo] {
        return
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
