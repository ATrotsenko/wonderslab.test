//
//  GameViewController.swift
//  WonderslabTest
//
//  Created by Alexey Trotsenko on 01.03.2018.
//  Copyright © 2018 Alexey Trotsenko. All rights reserved.
//

import UIKit

class GameViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bipTextField: UITextField!
    @IBOutlet weak var bopTextField: UITextField!
    
    private var gameData = [String]()
    
    private var bip: Int = 3 {
        didSet {
            updateGame()
        }
    }
    
    private var bop: Int = 7 {
        didSet {
            updateGame()
        }
    }
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCell(GameTableViewCell.self)
        bipTextField.placeholder = "\(bip)"
        bopTextField.placeholder = "\(bop)"
        registerViewToHideKeyboard(tableView)
        registerViewToHideKeyboard(headerView)

        updateGame()
    }
    
    // MARK: - Private
    private func updateGame() {
        let gameStore = GameStore(firstNumber: bip, secondNumber: bop, itemsCount: Constants.Settings.gameCount)
        gameData = gameStore.calculateGame()
        tableView.reloadData()
    }
}

// MARK: - UITableViewDelegate
extension GameViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueCell(cls: GameTableViewCell.self, indexPath: indexPath) else {
            return UITableViewCell()
        }
        cell.source(item: gameData[indexPath.row])
        return cell
    }
}

// MARK: - UITextFieldDelegate
extension GameViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let numberStr = textField.text,
        let number = Int(numberStr) else { return }
        if textField == bipTextField {
            bipTextField.placeholder = numberStr
            bip = number
        } else if textField == bopTextField {
            bopTextField.placeholder = numberStr
            bop = number
        }
    }
}



