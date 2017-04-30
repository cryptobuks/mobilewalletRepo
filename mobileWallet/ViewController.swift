//
//  ViewController.swift
//  mobileWallet
//
//  Created by Ismail Sultani on 2017-04-26.
//  Copyright © 2017 Ismail Sultani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView! //collection table
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var profileSideMenu: UIView!
    var menuShow = false
    
    @IBOutlet weak var dropDownMenu: UIView!
    
    @IBAction func dropDownMenuButton(_ sender: Any) {
        if (dropDownMenu.isHidden){
            dropDownMenu.isHidden = false
        } else {
            dropDownMenu.isHidden = true
        }
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        if (menuShow) {
            leadingConstraint.constant = -167
        } else{
            leadingConstraint.constant = 0
            
            
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShow = !menuShow
    }
    
    // store all card objects
    var cardArray: [cardObject] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileSideMenu.layer.shadowOpacity = 0.6
        //profileSideMenu.layer.shadowRadius = 5
        
        let card1 = cardObject(name: "Scotiabank Debit Card", balance: "$2014.00", availableCredit: nil, number: "**** **** **** 0942")
        let card2 = cardObject(name: "RBC Gold Card", balance: "$4000.00", availableCredit: "$6000.00", number: "148 *** *** 6425")
        let card3 = cardObject(name: "Maestro Credit Card", balance: "$2000.00", availableCredit: "$3000.00", number: "456 *** *** 0332")
        let card4 = cardObject(name: "TD Bank Credit Card", balance: "$1050.00", availableCredit: "$8050.00", number: "123 *** *** 0972")
        let card5 = cardObject(name: "CIBC Credit Card", balance: "$3000.00", availableCredit: "$7000.00", number: "310 *** *** 4567")
        
        cardArray.append(card1)
        cardArray.append(card2)
        cardArray.append(card3)
        cardArray.append(card4)
        cardArray.append(card5)

    }
    

    // struct for cardObject and its properties
    struct cardObject {
        var name: String
        var balance: String
        var availableCredit: String?
        var number: String
        //var image1: UIImage
        //var image2: UIImage
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardcell", for: indexPath) as! PaymentCardsCollectionViewCell
        
        
        //cell.cardcellBalanceAmount.text = tweetArray[indexPath.item].tweetName
        
        //cell.cardcellBalanceAmount.text? = "$1000.00"
        
        //cell.cardcellName.text = "BANK OF SOMETHING"
        //cell.userDate.text = tweetArray[indexPath.item].tweetDate
        
        cell.cardcellName.text = cardArray[indexPath.item].name
        cell.cardcellBalance.text = cardArray[indexPath.item].balance
        cell.cardcellNumber.text = cardArray[indexPath.item].number
        
        if cardArray[indexPath.item].availableCredit == nil {
            cell.cardcellAvailableCreditLabel.isHidden = true
            cell.cardcellAvailableCreditAmount.isHidden = true
        } else {
            cell.cardcellAvailableCreditAmount.text = cardArray[indexPath.item].availableCredit
        }
        //cell.cardcellImage.image = #imageLiteral(resourceName: "lionlogo")
        //cell.cardcellImage2.image = #imageLiteral(resourceName: "lionlogo")
        
        //collectionView.reloadData()
        
        cell.layer.cornerRadius = 15
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = UIColor.lightGray.cgColor
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardArray.count
    }
    
    



}

