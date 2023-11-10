import UIKit

class Pessoa {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }

    func saudacao() {
        print("Olá, meu nome é \(nome) e eu tenho \(idade) anos.")
    }

    // Exemplo de Controle de Fluxo
    func verificarIdadeOutraPessoa(outraPessoa: Pessoa) {
        if outraPessoa.idade > self.idade {
            print("\(outraPessoa.nome) é mais velho.")
        } else {
            print("\(self.nome) é mais velho.")
        }
    }
}

// Exemplo de Coleções
var pessoas: [Pessoa] = [
    Pessoa(nome: "João", idade: 25),
    Pessoa(nome: "Maria", idade: 30)
]

for pessoa in pessoas {
    pessoa.saudacao()
}

// Exemplo de Funções e Closures
func somar(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let resultado = somar(5, 3)
print("A soma é \(resultado)")

let multiplicar: (Int, Int) -> Int = { a, b in
    return a * b
}

let produto = multiplicar(4, 2)
print("O produto é \(produto)")

// Exemplo de Enums e Structs
enum DiaSemana {
    case segunda, terca, quarta, quinta, sexta, sabado, domingo
}

let hoje = DiaSemana.quarta
print("Hoje é \(hoje)")

struct Retangulo {
    var largura: Double
    var altura: Double

    func calcularArea() -> Double {
        return largura * altura
    }
}

let retangulo = Retangulo(largura: 5.0, altura: 3.0)
let area = retangulo.calcularArea()
print("A área do retângulo é \(area)")
