//
//  ViewController.swift
//  FirstLayout-v1
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var tileView: TileView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		let radius = tileView.bounds.width / 20
		tileView.layer.cornerRadius = radius
	}

}

