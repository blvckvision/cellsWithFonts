//
//  View2.swift
//  CollectionView
//
//  Created by Вадим Полнер on 02.08.2018.
//  Copyright © 2018 Вадим Полнер. All rights reserved.
//

import UIKit

class View2: UIViewController {

    @IBOutlet weak var labelfirst: UILabel!
    @IBOutlet weak var labelsecond: UILabel!
    @IBOutlet weak var labelthird: UILabel!
    
    override func viewDidLoad() {
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    
        labelfirst.text = globalFont //пмшем в первый лейбл

        labelsecond.textColor = UIColor.green  //ставим цвет/ шрифт /задаем текст
        labelsecond.font = UIFont(name: globalFont, size: 17)
        labelsecond.text = "example"
        
        labelthird.text = labelsecond.font.pointSize.description //вычисляем размер шрифта
        
    }
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


