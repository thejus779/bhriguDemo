//
//  receipe
//  tableView
//
//  Created by Mahajan BHRIGU on 29/03/2018.
//  Copyright © 2018 Mahajan BHRIGU. All rights reserved.
//

import Foundation
class Receipebooks {
    var title : String?
    var preptime : String?
    var cook : String?
    var description : String?
    var img : String?
    var serves : String?
    
    init(
        title : String,
        preptime : String,
        cook : String,
        description : String,
        img : String,
        serves : String
        )
    {
        self.title = title
        self.preptime = preptime
        self.cook = cook
        self.description = description
        self.img = img
        self.serves = serves
    }
}
