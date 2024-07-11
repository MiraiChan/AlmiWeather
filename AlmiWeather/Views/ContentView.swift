//
//  ContentView.swift
//  AlmiWeather
//
//  Created by Almira Khafizova on 10.07.24.
//

import SwiftUI

struct ContentView: View {
	@StateObject var locationManager = LocationManager()
	
	var body: some View {
		VStack {
			WelcomeView()
				.environmentObject(locationManager)
		}
		.background(Colors.backgroundColor)
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
	}
}

#Preview {
	ContentView()
}
