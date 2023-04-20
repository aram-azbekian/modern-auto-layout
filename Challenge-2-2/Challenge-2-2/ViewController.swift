//
//  ViewController.swift
//  Challenge-2-2
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
	
	private let greenPadding: CGFloat = 50.0
	private let redPadding: CGFloat = 25.0
	private let redViewHeight: CGFloat = 100.0
	
	private var greenView: UIView = {
		let view = UIView()
		view.backgroundColor = .green
		return view
	}()
	
	private var redView: UIView = {
		let view = UIView()
		view.backgroundColor = .red
		return view
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .yellow
		view.addSubview(greenView)
		greenView.addSubview(redView)
	}
	
	override func viewWillLayoutSubviews() {
		let greenWidth = view.bounds.width - 2 * greenPadding
		let greenHeight = view.bounds.height - 2 * greenPadding
		greenView.frame = CGRect(x: greenPadding, y: greenPadding, width: greenWidth, height: greenHeight)
		
		let redWidth = greenWidth - 2 * redPadding
		let redY = greenHeight / 2 - redViewHeight / 2
		redView.frame = CGRect(x: redPadding, y: redY, width: redWidth, height: redViewHeight)
	}


}

