//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Ambar Maqsood on 2016-10-18.
//  Copyright © 2016 Ambar Maqsood. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    
    var taco: Taco!

    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLbl.text = taco.productName
    }

}
