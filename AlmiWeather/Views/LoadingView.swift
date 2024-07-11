//
//  LoadingView.swift
//  AlmiWeather
//
//  Created by Almira Khafizova on 11.07.24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
		ProgressView()
			.progressViewStyle(CircularProgressViewStyle(tint: .yellow))
			.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
