//
//  OtherBands.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import SwiftUI

struct OtherBands: View {
    @Binding var selected: Band?
    
    var body: some View {
        HStack {
            Text("Other Bands")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.title)
            
            Spacer()
        }
        .padding(.top)
        .padding(.horizontal)
        
        TabView {
            ForEach(Band.data) { band in
                if band.image != selected?.image {
                    Image(band.image)
                        .resizable()
                        .cornerRadius(15)
                        .padding(.horizontal)
                }
            }
        }
        .frame(height: 250)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .padding(.top)
        
        Button(action: {}) {
            Text("Choose the band")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 150)
                .background(Color.blue)
                .cornerRadius(15)
        }
        .padding(.top, 25)
        .padding(.bottom)
    }
}

struct OtherBands_Previews: PreviewProvider {
    static var previews: some View {
        OtherBands(selected: .constant(Band.data.first!))
    }
}
