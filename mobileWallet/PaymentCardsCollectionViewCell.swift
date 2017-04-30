//
//  PaymentCardsCollectionViewCell.swift
//  mobileWallet
//
//  Created by Ismail Sultani on 2017-04-26.
//  Copyright © 2017 Ismail Sultani. All rights reserved.
//

import UIKit

class PaymentCardsCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var cardcellName: UILabel!
    
    @IBOutlet weak var cardcellImage: UIImageView!
    
    @IBOutlet weak var cardcellBalance: UILabel!
    
    @IBOutlet weak var cardcellNumber: UILabel!
    
    @IBOutlet weak var cardcellImage2: UIImageView!

    @IBOutlet weak var cardcellAvailableCreditAmount: UILabel!
    @IBOutlet weak var cardcellAvailableCreditLabel: UILabel!
}
