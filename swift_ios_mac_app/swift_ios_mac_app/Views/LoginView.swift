//
//  LoginView.swift
//  swift_ios_mac_app
//
//  Created by Sebastijan Bičak on 23.09.2026..
//

import SwiftUI

struct LoginView: View {
    @State private var model: jsonModel?
    var body: some View {
        VStack(spacing: 12) {
            Text("Hello world from login view")
            if let model = model {
                Text("WE GOT MODEL FROM REST API")
                Text("GET: \(String(describing: model))")
            }
        }
        .task {
            do {
                model = try await fetchJson()
            } catch {
                print("LoginView fetchJson error: \(error)")
            }
        }
    }
}

#Preview {
    LoginView()
}
