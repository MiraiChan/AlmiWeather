//
//  WelcomeView.swift
//  AlmiWeather
//
//  Created by Almira Khafizova on 10.07.24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
	@EnvironmentObject var locationManager: LocationManager
	
	var body: some View {
		VStack {
			VStack(spacing: 20) {
				Text("Welcome to AlmiWeather app")
					.foregroundColor(.black)
					.bold().font(.title)
				Text("Please share your current location to get the weather in your area")
					.foregroundColor(.black)
					.padding()
			}
			.multilineTextAlignment(.center)
			.padding()
			
			LocationButton(.shareCurrentLocation) {
				locationManager.requestLocation()
			}
			.tint(Colors.buttonColor)
			.cornerRadius(30)
			.symbolVariant(.fill)
			
			.foregroundColor(.black)
			.overlay(
				RoundedRectangle(cornerRadius: 30)
					.stroke(Color.black, lineWidth: 2)
			)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
	}
}

struct WelcomeView_Previews: PreviewProvider {
	static var previews: some View {
		WelcomeView()
	}
}
