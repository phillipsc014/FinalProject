//
//  ViewController.swift
//  Final Project
//
//  Created by  on 4/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var winNumLabel: UILabel!
    @IBOutlet weak var lossNumLabel: UILabel!
    
    
    @IBOutlet weak var xTurnLabel: UILabel!
    @IBOutlet weak var oTurnLabel: UILabel!
    
    
    @IBOutlet weak var space1: UIButton!
    @IBOutlet weak var space2: UIButton!
    @IBOutlet weak var space3: UIButton!
    @IBOutlet weak var space4: UIButton!
    @IBOutlet weak var space5: UIButton!
    @IBOutlet weak var space6: UIButton!
    @IBOutlet weak var space7: UIButton!
    @IBOutlet weak var space8: UIButton!
    @IBOutlet weak var space9: UIButton!

    
    var caseX = "X"
    var caseO = "O"
    var caseEmpty = String()
    
    //define colored strings for the x's and o's
    let attributesX = [NSAttributedString.Key.foregroundColor: UIColor(red: 175/255, green: 25/255, blue: 25/255, alpha: 1.0)]
    let attributesO = [NSAttributedString.Key.foregroundColor: UIColor(red: 55/255, green: 85/255, blue: 180/255, alpha: 1.0)]
    
    //true stands for a 1 or an X; false stands for a 0 or a O
    var firstTurn = true
    var currentTurn = true

    
    var winNum = 0
    var lossNum = 0
    
    
    var board = [UIButton] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oTurnLabel.isHidden = true
        
        userInteractionEnable()
        setBoard()
        clearTitles()
        winNumLabel.text = String(winNum)
        lossNumLabel.text = String(lossNum)
        }
    
    @IBAction func tapSquare(_ sender: UIButton) {
        if (currentTurn == true) && (sender.isUserInteractionEnabled == true) //if x's turn
        {
            sender.setAttributedTitle(NSAttributedString(string: caseX, attributes: attributesX), for: .normal)
            currentTurn = false
            xTurnLabel.isHidden = true
            oTurnLabel.isHidden = false
            sender.isUserInteractionEnabled = false
        }
        else if currentTurn == false && (sender.isUserInteractionEnabled == true) //if o's turn
        {
            sender.setAttributedTitle(NSAttributedString(string: caseO, attributes: attributesO), for: .normal)
            currentTurn = true
            xTurnLabel.isHidden = false
            oTurnLabel.isHidden = true
            sender.isUserInteractionEnabled = false
        }
    }
    
    
    func userInteractionEnable() {
        //ensures that each square is able to be pressed before each game
        space1.isUserInteractionEnabled = true
        space2.isUserInteractionEnabled = true
        space3.isUserInteractionEnabled = true
        space4.isUserInteractionEnabled = true
        space5.isUserInteractionEnabled = true
        space6.isUserInteractionEnabled = true
        space7.isUserInteractionEnabled = true
        space8.isUserInteractionEnabled = true
        space9.isUserInteractionEnabled = true
    }
    

    func setBoard() {
        //actually adding the board elements to the array for checking -- only done once
        board.append(space1)
        board.append(space2)
        board.append(space3)
        board.append(space4)
        board.append(space5)
        board.append(space6)
        board.append(space7)
        board.append(space8)
        board.append(space9)
    }
    
    
    func clearTitles() {
        //clear x's and o's after each game
        space1.setAttributedTitle(nil, for: .normal)
        space2.setAttributedTitle(nil, for: .normal)
        space3.setAttributedTitle(nil, for: .normal)
        space4.setAttributedTitle(nil, for: .normal)
        space5.setAttributedTitle(nil, for: .normal)
        space6.setAttributedTitle(nil, for: .normal)
        space7.setAttributedTitle(nil, for: .normal)
        space8.setAttributedTitle(nil, for: .normal)
        space9.setAttributedTitle(nil, for: .normal)
    }
}
