//
//  ViewController.swift
//  CollectionView
//
//  Created by Вадим Полнер on 01.08.2018.
//  Copyright © 2018 Вадим Полнер. All rights reserved.
//

import UIKit
var globalFont:String = ""
var globalIndex:Int = 0
var listOfFonts = [String]()

class ViewController: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    for familyName in UIFont.familyNames {
    listOfFonts += ((UIFont.fontNames(forFamilyName: familyName)))
    }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfFonts.count// count elements in section
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label1.text = (listOfFonts[indexPath.row]) // пишем в лейбл
        cell.backgroundColor = UIColor.orange//красим ячейку
        return cell
        
    }
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        globalIndex = indexPath.row
        globalFont = listOfFonts[indexPath.row]
    }

}

