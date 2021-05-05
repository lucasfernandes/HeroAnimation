//
//  BandsList.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import SwiftUI

struct BandsList: View {
    var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    var namespace: Namespace.ID
    @Binding var show: Bool
    @Binding var selected: Band?
    @Binding var loadView: Bool
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 25) {
            ForEach(Band.data) { band in
                VStack(alignment: .leading, spacing: 10) {
                    Image(band.image)
                        .resizable()
                        .frame(height: 180)
                        .cornerRadius(15)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selected = band
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                    loadView.toggle()
                                }
                            }
                        }
                        .matchedGeometryEffect(id: band.id.uuidString, in: namespace)
                    
                    Text(band.title)
                        .fontWeight(.bold)
                        .foregroundColor(.title)
                }
            }
        }
        .padding([.horizontal, .bottom])
    }
}

struct BandsList_Previews: PreviewProvider {
    static var previews: some View {
        BandsList(namespace: Namespace().wrappedValue, show: .constant(true), selected: .constant(Band.data.first!), loadView: .constant(false))
    }
}
