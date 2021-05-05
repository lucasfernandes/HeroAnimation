//
//  Home.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 04/05/21.
//

import SwiftUI

struct Home: View {
    @State var selected = Band.data.first
    @State var show = false
    @Namespace var namespace
    @State var loadView = false
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Text("Favorite Bands")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.title)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "filemenu.and.selection")
                            .foregroundColor(.primary)
                    }
                }
                .padding([.horizontal, .top])
                
                BandsList(namespace: namespace, show: $show, selected: $selected, loadView: $loadView)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .zIndex(0)
            
            if show {
                DetailView(namespace: namespace, show: $show, loadView: $loadView, selected: $selected)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
        .background(Color.background.edgesIgnoringSafeArea(.all))
        .statusBar(hidden: show ? true : false)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
