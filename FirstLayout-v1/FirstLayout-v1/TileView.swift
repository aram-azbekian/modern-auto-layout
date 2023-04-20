//
//  TileView.swift
//  FirstLayout-v1
//
//  Created by aram.azbekyan on 17.04.2023.
//

import UIKit

@IBDesignable
final class TileView: UIView {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setupView()
	}
	
	private var redView: UIView = {
		let view = UIView()
		view.backgroundColor = .red
		return view
	}()
	
	private var blueView: UIView = {
		let view = UIView()
		view.backgroundColor = .blue
		return view
	}()
	
	private func setupView() {
		addSubview(redView)
		addSubview(blueView)
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		// size of this container view
		let containerWidth = bounds.width
		let containerHeight = bounds.height
		
		// calculate width and height including padding
		let numberOfItems: CGFloat = 2
		let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
		let itemHeight = containerHeight - 2 * padding
		
		// set the frames of the two subviews
		blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
		redView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
	}
	
	@IBInspectable var padding: CGFloat = 25.0 {
		didSet {
			setNeedsLayout()
		}
	}
}
