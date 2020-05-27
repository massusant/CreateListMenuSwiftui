//
//  BluetoothView.swift
//  CreateListMenu
//
//  Created by Dwi Susanto on 27/05/20.
//  Copyright © 2020 Kelana. All rights reserved.
//

import SwiftUI

struct BluetoothView: View {
     @ObservedObject var bluetooth = Condition()

       var body: some View {
           return NavigationLink(destination: BluetoothToggleView(bluetooth: bluetooth)) {
               HStack() {
                   Image(systemName:"wifi")
                       .resizable()
                       .cornerRadius(12)
                       .frame(width: 25, height: 25)
                       .clipped()
                       .aspectRatio(contentMode: .fit)
                   Text("Bluetooth")
                       .foregroundColor(.blue)
                       .font(.system(size: 20))
                       .frame(width: 150,height: 40, alignment: .leading)
                   Text(bluetooth.isBluetoothOn ? "On" : "Off")
                       .foregroundColor(.gray)
                       .font(.system(size: 20))
                       .font(.subheadline)
                       .frame(width: 170, height: 40, alignment: .trailing)
               }
           }
       }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothView()
    }
}
