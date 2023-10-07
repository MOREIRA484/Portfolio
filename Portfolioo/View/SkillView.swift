//
//  SkillView.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct SkillView: View {
    
    var skil: Skill
    
    var body: some View {
        VStack{
            
            Image(skil.image)
                .resizable()
                .scaledToFit()
                .font(.system(size: 35, weight: .bold))
              
            
            Text(skil.skillName)
                .font(.subheadline)
                .bold()
                .padding(.top, 10)
            
        }.padding()
            .frame(width: 120, height: 109.7)
            .background(Color("Color"))
            .opacity(0.7)
            .cornerRadius(10)
    }
}

#Preview {
    SkillView(skil: AppModel().Portfolio.skill[2])
}
