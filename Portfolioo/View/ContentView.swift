//
//  ContentView.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var appmodel: AppModel = AppModel()
    
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading){
                    
                    Hearder(appmodel: appmodel)
                    
                    SkillsView(skils: appmodel.Portfolio.skill, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    
                    ExperiencesView(experiences: appmodel.Portfolio.experience)
                        .padding(.top, 42)
                    
                }.padding(24)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
