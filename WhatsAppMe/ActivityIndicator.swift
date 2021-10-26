//
//  ActivityIndicator.swift
//  WhatsAppMe
//
//  Created by Anmol Jain on 16/10/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
	@Binding var isAnimating: Bool
	let style: UIActivityIndicatorView.Style
	var color: UIColor = .suraasaLightCarbon
	
	func makeUIView(context: Context) -> UIActivityIndicatorView {
		let activityIndicator = UIActivityIndicatorView(style: style)
		activityIndicator.color = color
		
		return activityIndicator
	}
	
	func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
		isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
	}
}
