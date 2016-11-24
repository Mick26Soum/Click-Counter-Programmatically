//
//  ViewController.swift
//  ClickCounter
//
//  Created by MICK SOUMPHONPHAKDY on 11/24/16.
//  Copyright © 2016 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// Create a UIButton
		let clickButton = UIButton()
		clickButton.setTitle("Click Here", for: .normal)
		clickButton.setTitleColor(UIColor.white, for: .normal)
		clickButton.backgroundColor = UIColor.blue
		clickButton.frame = CGRect(x: 150, y: 300, width: 50, height: 50)
		clickButton.layer.cornerRadius = 5
		clickButton.invalidateIntrinsicContentSize() // try to auto rezize
		self.view.addSubview(clickButton)
		
		
	}
	
	

}

