//
//  Hearder.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct Hearder: View {
    
    var appmodel: AppModel
    
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("leonardo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                .cornerRadius(50)
                
                Spacer()
            }
            
           
            
            
            Text(appmodel.Portfolio.nome)
                .font(.subheadline)
                .bold()
                .padding(.top, 8)
            
            Text(appmodel.Portfolio.role)
                .font(.caption)
                .bold()
                .opacity(0.85)
                .padding(.top, -2)
            
            
            HStack {
                
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                
                Text(appmodel.Portfolio.localition)
                    
            }
            .foregroundColor(.gray)
            .font(.footnote)
            .padding(.top, 10)
            
            
            Text(appmodel.Portfolio.descrition)
                .font(.subheadline)
                .foregroundColor(.gray)
                
                .opacity(0.9)
                .bold()
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

#Preview {
    Hearder(appmodel: AppModel())
        .padding(24)
}
