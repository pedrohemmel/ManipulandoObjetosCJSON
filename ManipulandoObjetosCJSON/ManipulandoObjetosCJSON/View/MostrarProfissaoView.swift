//
//  MostrarProfissaoView.swift
//  ManipulandoObjetosCJSON
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 08/09/22.
//

import SwiftUI

struct MostrarProfissaoView: View {
    
    @Binding var profissao: [ProfissaoModel]?
    
    var body: some View {
        VStack {
            Spacer()
            List {
                ForEach(profissao!, id: \.id_profissao) { profissao in
                    Text(profissao.cargo_profissao)
                }
            }
            .ignoresSafeArea()
            
            Spacer()
        }
    }
}

struct MostrarProfissaoView_Previews: PreviewProvider {
    static var previews: some View {
        MostrarProfissaoView(profissao: .constant([ProfissaoModel]()))
    }
}
