//
//  DetailImage.swift
//  HeroAnimation
//
//  Created by Lucas Silveira on 05/05/21.
//

import SwiftUI

struct DetailHeaderButtons: View {
    @Binding var loadView: Bool
    @Binding var show: Bool
    var body: some View {
        HStack {
            Button(action: {
                loadView.toggle()
                withAnimation(.spring()) {
                    show.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .foregroundColor(.text)
                    .padding()
                    .background(Color.background.opacity(0.5))
                    .clipShape(Circle())
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "suit.heart.fill")
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.background.opacity(0.5))
                    .clipShape(Circle())
            }
        }
        .padding(.top, 35)
        .padding(.horizontal)
        .zIndex(3)
    }
}

struct DetailHeaderButtons_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderButtons(loadView: .constant(true), show: .constant(true))
    }
}
