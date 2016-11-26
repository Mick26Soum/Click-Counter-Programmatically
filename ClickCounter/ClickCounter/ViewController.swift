//
//  ViewController.swift
//  ClickCounter
//
//  Created by MICK SOUMPHONPHAKDY on 11/24/16.
//  Copyright © 2016 MICK SOUMPHONPHAKDY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var counter: Int = 0
	var clickButton: UIButton!
	var counterLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// UILabel
		counterLabel = UILabel()
		counterLabel.frame = CGRect.init(x: 200, y: 200, width: 60, height: 60)
		counterLabel.text = "0"
		self.view.addSubview(counterLabel)
		
		// UIButton
		clickButton = UIButton.init(type: .roundedRect)
		clickButton.setTitle("Click Here", for: .normal)
		clickButton.setTitleColor(UIColor.white, for: .normal)
		clickButton.backgroundColor = UIColor.lightGray
		clickButton.sizeToFit() //automatically resizes the button
		clickButton.center = CGPoint(x: 200, y: 300)
		clickButton.layer.cornerRadius = 5
		clickButton.addTarget(self, action:#selector(ViewController.incrementCounter), for:UIControlEvents.touchUpInside)
		self.view.addSubview(clickButton) 
		
	}
	
	func incrementCounter(){
		
		counter = counter + 1
		counterLabel.text = "\(counter)"
		
	}
	

}

