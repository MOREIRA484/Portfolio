//
//  experienceView.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct experienceView: View {
    
    
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
           
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading){
                    
                    
                    Text(experience.curso)
                        .bold()
                    
                   
                   
                    
                    Text(experience.role)
                        .frame(width: 220)
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                        .padding(.top, 4)
                    
                        
                    
                    Text(experience.duration)
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.top, 14)
                    
                }
                
            }.padding(.top, 8)
        }.fixedSize()
    }
}

#Preview {
    GeometryReader{ proxy in
        experienceView(experience: AppModel().Portfolio.experience[0])
            .padding(24)
    }
}
