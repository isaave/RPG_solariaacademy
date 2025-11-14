//
//  main.swift
//  RPG - Solaria Academy
//
//  Created by ISABELLA AVELINA DE OLIVEIRA on 14/11/25.
//

import Foundation


var nome = ""
var elemento = ""
var arma = ""
var nivel = 1
var forca = 10
var energia = 20
var vida = 30

var criouGuardiao = false
var estaNoMenu = true


var inimigoVida = 30
var inimigoAtaque = 10

print("Bem-vinda à Solaria Academy!")
print("Uma antiga e prestigiada escola dedicada ao ensino de magia solar.")
print("Localizada na galaxia Almedra, onde ha muitas estrelas.")
print("A academia treina jovens aprendizes para proteger a Luz.")


while estaNoMenu {

    print("")
    print("Menu Principal")
    print("1 - Criar Bruxo(A)")
    print("2 - Treinar")
    print("3 - Ver Status")
    print("4 - Batalhar")
    print("5 - Sair")
    print("Escolha: ", terminator: "")

    let escolha = readLine() ?? ""

    if escolha == "1" {
        print("Nome do seu ou sua Bruxo(a):")
        nome = readLine() ?? ""

        print("Escolha o elemento (Raio, Fogo, Gases):")
        elemento = readLine() ?? ""

        print("Escolha a arma (Ondas eletromagneticas, Espada, Arco, Varinha ou Livro de encantos):")
        arma = readLine() ?? ""

        criouGuardiao = true
        print("Bruxo criado com sucesso.")

    } else if escolha == "2" {
        if criouGuardiao == false {
            print("Crie o Bruxo(a) primeiro.")
        } else {
            print("Treinando...")
            nivel += 1
            forca += 5
            energia += 5
            print("Treino concluído. Seu Bruxo(a) subiu para o nível \(nivel).")
        }

    } else if escolha == "3" {
        if criouGuardiao == false {
            print("Nenhum Bruxo(a) criado ainda.")
        } else {
            print("Status do Bruxo(a)")
            print("Nome: \(nome)")
            print("Elemento: \(elemento)")
            print("Arma: \(arma)")
            print("Nível: \(nivel)")
            print("Força: \(forca)")
            print("Energia: \(energia)")
            print("Vida: \(vida)")
        }

    } else if escolha == "4" {

        if criouGuardiao == false {
            print("Crie seu Bruxo(a) antes de batalhar.")
        } else if nivel < 19 {
            print("Seu nível é baixo. Treine até atingir o nível.")
        } else {

            print("A batalha começou.")
            var minhaVida = vida
            var vidaDoInimigo = inimigoVida

            while minhaVida > 0 && vidaDoInimigo > 0 {

                let meuDano = forca / 2
                vidaDoInimigo -= meuDano

                print("Você causou \(meuDano) de dano!")
                print("Vida do inimigo: \(vidaDoInimigo)")

                if vidaDoInimigo <= 0 { break }

                minhaVida -= inimigoAtaque
                print("O inimigo causou \(inimigoAtaque) de dano!")
                print("Sua vida: \(minhaVida)")

                print("")
                sleep(1)
            }

            if minhaVida <= 0 {
                print("Você foi derrotado. O fragmento Estelar cai nas sombras.")
                estaNoMenu = false
            } else {
                print("Vitória! Você derrotou a Corruptora das Sombras.")
                print("A luz retorna ao Fragmento Estelar.")
                print("Parabéns \(nome)!! Agora você se tornou um dos Guardiãos de Solaria <3")
                estaNoMenu = false
            }
        }

    } else if escolha == "5" {
        print("Saindo do jogo.")
        estaNoMenu = false

    } else {
        print("Opção inválida.")
    }
}
