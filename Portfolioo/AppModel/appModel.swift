//
//  appModel.swift
//  Portfolioo
//
//  Created by leonardo Moreira on 07/10/23.
//

import Foundation



class AppModel: ObservableObject {
    
    var Portfolio = portfolio(nome: "Leonardo Moreira", role: "Developer IOS Mobile", descrition: "Me chamo leonardo tenho 22 anos, estou estudando para se tornar um grande Desenvolvedor IOS. estou pronto para novos desafios e aprendizados! ", localition: "São Paulo, SP", skill: [
    
        Skill(id: 1, skillName: "IOS", image: "smartphone"),
    Skill(id: 2, skillName: "Swift 5", image: "swift"),
    Skill(id: 3, skillName: "Git/GitHub", image: "github"),
    Skill(id: 4, skillName: "Figma", image: "figma"),
    Skill(id: 5, skillName: "Arquitetura", image: "botao")
    
    
    ], experience: [
                    
        Experience(id: 1, curso: "Alura", role: "IOS COM SWIFTUI: TRABALHANDO COM ANIMAÇÕES E DRAGGESTURE", duration: "Jun 2023"),
        Experience(id: 2, curso: "Alura", role: " IOS COM SWIFTUI: IMPLEMENTANDO NAVEGAÇÃO E GERENCIAMENTO DE ESTADOS", duration: "Jun 2023"),
        Experience(id: 3, curso:  "Alura", role: "SWIFT: ENTENDENDO A LINGUAGEM", duration: "Jun 2023"),
        Experience(id: 4, curso: "Alura" , role: "IOS COM SWIFTUI: CONSTRUINDO COMPONENTES E LAYOUTS", duration: "Jun 2023"),
        Experience(id: 5, curso: "Alura" , role: "Swift: entendendo e praticando orientação a objetos", duration: "Jun 2023")
                                                ])
    
}
