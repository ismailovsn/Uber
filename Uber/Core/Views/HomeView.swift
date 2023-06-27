//
//  HomeView.swift
//  Uber
//
//  Created by Саид-Насир Исмаилов on 2023/06/27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
