//
//  Reviews.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import SwiftUI

struct Reviews: View {
    var body: some View {
        HStack {
            Text("Reviews")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.title)
            Spacer()
        }
        .padding(.top)
        .padding(.horizontal)
        
        HStack(spacing: 0) {
            ForEach(1...5, id: \.self) { i in
                Image("p\(i)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .offset(x: -CGFloat(i * 20))
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("View All")
                    .fontWeight(.bold)
            }
        }
        .padding(.leading, 20)
        .padding(.top)
        .padding(.horizontal)
    }
}

struct Reviews_Previews: PreviewProvider {
    static var previews: some View {
        Reviews()
    }
}
