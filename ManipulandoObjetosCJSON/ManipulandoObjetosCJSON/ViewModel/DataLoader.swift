//
//  DataLoader.swift
//  ManipulandoObjetosCJSON
//
//  Created by Pedro Henrique Dias Hemmel de Oliveira Souza on 06/09/22.
//

import Foundation

public class DataLoader {
    
    @Published var pessoas = [PessoaModel]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        if let fileLocation = Bundle.main.path(forResource: "exemplo", ofType: "json") {
            
            do {
                
                guard let data = try String(contentsOfFile: fileLocation).data(using: .utf8) else { return }
                let jsonDecoder = JSONDecoder()
                let dataFromJSON = try jsonDecoder.decode([PessoaModel].self, from: data)
                
                
                self.pessoas = dataFromJSON
                
            } catch {
                print("\(error)")
            }
        }
    }
    
    func sort() {
        self.pessoas = self.pessoas.sorted(by: { $0.id_usuario < $1.id_usuario })
    }
}
