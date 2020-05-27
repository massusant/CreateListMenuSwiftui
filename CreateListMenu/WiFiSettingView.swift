//
//  WiFiSettingView.swift
//  CreateListMenu
//
//  Created by Dwi Susanto on 27/05/20.
//  Copyright © 2020 Kelana. All rights reserved.
//

import SwiftUI

struct WiFiSettingView : View {
    @ObservedObject var wifi: Condition
    
    var body: some View {
        Group() {
            Picker(selection: $wifi.type, label: WifiContainer()) {
                ForEach(0 ..< wifi.types.count) {
                    Text(self.wifi.types[$0]).tag($0).font(.system(size: 20))
                }
            }
            if wifi.type == 1 {
                HStack {
                    Text("SEARCHING FOR A NETWORK...")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .font(.system(.subheadline))
                    LoadingIndicator(style: .medium)
                }
            }
        }
    }
}

//WiFiSettingView.swift
struct WifiContainer: View {
    var body: some View {
        HStack {
            Image(systemName:"wifi")
                .resizable()
                .cornerRadius(12)
                .frame(width: 25, height: 25)
                .clipped()
                .aspectRatio(contentMode: .fit)
            Text("WiFi")
                .foregroundColor(.blue)
                .font(.system(size: 18))
        }
    }
}
