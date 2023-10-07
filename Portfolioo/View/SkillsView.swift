//
//  SkillsView.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct SkillsView: View {
    
    var skils: [Skill]
    
    @State var showSkill = false
    
    
    
    
    var width: CGFloat
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(spacing: 16){
                Text("Skills")
                    .font(.title2)
                    .bold()
                
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showSkill.toggle()
                    }
                   
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showSkill ? .zero: .degrees(180))
                } .buttonStyle(PlainButtonStyle())
            }
            
            if(showSkill) {
                
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 20) {
                    
                    ForEach(skils) { skill in
                        SkillView(skil: skill)
                    }
                 
                } .padding(.top, 38)
            }
            
        }
    }
}

#Preview {
    GeometryReader { proxy in
        
        SkillsView(skils: AppModel().Portfolio.skill, width: 400)
            .padding(24)
    }
}
