//
//  LocationSearchResultCell.swift
//  Uber
//
//  Created by Саид-Насир Исмаилов on 2023/06/29.
//

import SwiftUI

struct LocationSearchRow: View {
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .tint(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text("Starbucks Coffee")
                    .font(.body)
                
                Text("123 Main St, Cupertino CA")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Divider()
            }
            .padding(.leading, 8)
//            .padding(.vertical, 8)
        }
        .padding(.leading)    }
}

struct LocationSearchRow_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchRow()
    }
}
