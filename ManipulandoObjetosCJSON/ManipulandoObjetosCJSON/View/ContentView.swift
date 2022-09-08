//
//  ContentView.swift
//  ManipulandoObjetosCJSON
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 06/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var pessoasDoJson = [PessoaModel]()
    
    var body: some View {
        VStack {
            
            List {
                ForEach(pessoasDoJson, id: \.id_usuario) { pessoa in
                    Text(pessoa.nome_usuario)
                }
            }
            
        }
        .onAppear {
            self.pessoasDoJson = DataLoader().pessoas
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
