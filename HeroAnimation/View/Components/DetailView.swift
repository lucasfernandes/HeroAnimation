//
//  DetailView.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import SwiftUI

struct DetailView: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    @Binding var loadView: Bool
    @Binding var selected: Band?
    var body: some View {
        VStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                Image(selected!.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width)
                    .matchedGeometryEffect(id: selected!.id.uuidString, in: namespace)
                
                if loadView {
                    DetailHeaderButtons(loadView: $loadView, show: $show)
                }
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                if loadView {
                    VStack {
                        HStack {
                            Text(selected!.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.title)
                            
                            Spacer()
                        }
                        .padding(.top)
                        .padding(.horizontal)
                        
                        Text(selected!.description)
                            .foregroundColor(.text)
                            .multilineTextAlignment(.leading)
                            .padding(.top)
                            .padding(.horizontal)
                        
                        Reviews()
                        OtherBands(selected: $selected)
                    }
                }
            }
        }
        .background(Color.background)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(namespace: Namespace().wrappedValue, show: .constant(true), loadView: .constant(true), selected: .constant(Band.data.first!))
    }
}
