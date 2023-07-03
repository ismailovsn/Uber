//
//  RideRequestView.swift
//  Uber
//
//  Created by Саид-Насир Исмаилов on 2023/07/02.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType: RideType = .uberX
    
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            tripInfo
            Divider()
            
            // ride type selection view
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity,  alignment: .leading)
            
            ScrollView(.horizontal) {
                rideTypes
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical, 8)
            
            paymentOptions
            
            requestRideButton
        }
        .padding(.bottom, 24)
        .background(.white)
        .cornerRadius(12)
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}

extension RideRequestView {
    var decorationFromTo: some View {
        VStack {
            Circle()
                .fill(Color(.systemGray3))
                .frame(width: 8, height: 8)
            
            Rectangle()
                .fill(Color(.systemGray3))
                .frame(width: 1, height: 32)
            
            Rectangle()
                .fill(.black)
                .frame(width: 8, height: 8)
        }
    }
    
    var tripInfo: some View {
        HStack {
            decorationFromTo
            
            VStack(alignment: .leading, spacing: 24) {
                HStack {
                    Text("Current location")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("1:30PM")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
                .padding(.bottom, 10)
                
                HStack {
                    Text("Starbucks Coffee")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("1:45PM")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                }
            }
            .padding(.leading, 8)
        }
        .padding()
    }
    
    var rideTypes: some View {
        HStack(spacing: 12) {
            ForEach(RideType.allCases) { type in
                VStack(alignment: .leading) {
                    Image(type.imageName)
                        .resizable()
                        .scaledToFit()
                    
                    VStack(alignment: .leading ,spacing: 4) {
                        Text(type.description)
                            .font(.system(size: 14, weight: .semibold))
                        
                        Text("$22.04")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .padding(8)
                }
                .frame(width: 112, height: 140)
                .foregroundColor(type == selectedRideType ? .white : .black)
                .background(Color(type == selectedRideType ? .systemBlue : .systemGroupedBackground))
                .scaleEffect(type == selectedRideType ? 1.1 : 1.0)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selectedRideType = type
                    }
                }
            }
        }
    }
    
    var paymentOptions: some View {
        HStack(spacing: 12) {
            Text("Visa")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(6)
                .background(.blue)
                .cornerRadius(4)
                .foregroundColor(.white)
                .padding(.leading)
            
            Text("**** 1234")
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .imageScale(.medium)
                .padding()
        }
        .frame(height: 50)
        .background(Color(.systemGroupedBackground))
        .cornerRadius(10)
        .padding(.horizontal)
    }
    
    var requestRideButton: some View {
        Button {
            
        } label: {
            Text("CONFIRM RIDE")
                .fontWeight(.bold)
                .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                .background(.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
    }
}
