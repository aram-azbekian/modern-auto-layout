//
//  RootViewController.swift
//  CodeLayout
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

final class RootViewController: UIViewController {
	let padding: CGFloat = 50.0
	
	private let greenView: UIView = {
		let view = UIView()
		view.backgroundColor = .green
		return view
	}()

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .yellow
		view.addSubview(greenView)
    }
	
	override func viewWillLayoutSubviews() {
		let width = view.bounds.width - 2 * padding
		greenView.frame = CGRect(x: padding, y: padding, width: width, height: 3 * padding)
	}

}
