//
//  ExperiencesView.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct ExperiencesView: View {
    
    var experiences: [Experience]
    
    @State var showExperiences = true
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 24){
            HStack(spacing: 16){
                Text("Experiences")
                    .font(.title2)
                    .bold()
                
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                   
                } label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(self.showExperiences ? .zero: .degrees(180))
                } .buttonStyle(PlainButtonStyle())
            }
            
            if(showExperiences) {
        
                ForEach(experiences) { experiencess in
                    experienceView(experience: experiencess)
                
                }
            }
        }
    }
}

#Preview {
    
    GeometryReader { proxy in
        ExperiencesView(experiences: AppModel().Portfolio.experience)
            .padding(24)
    
    }
}
