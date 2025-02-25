using System;
using System.Collections.Generic;

class Lista {
    static List<string> aluno = new List<string>(); 

    static void Main() {
        int opcao;

        do {
            Console.WriteLine("=== Controle de Presença ===");
            Console.WriteLine("1 - Adicionar um aluno");
            Console.WriteLine("2 - Remover aluno");
            Console.WriteLine("3 - Verificar se o aluno está na lista");
            Console.WriteLine("4 - Verificar quantos alunos tem na lista");
            Console.WriteLine("0 - Sair");
            Console.Write("Escolha uma opção: ");

            if (int.TryParse(Console.ReadLine(), out opcao)) {
                switch (opcao) {
                    case 1:
                        CadastrarAluno();
                        break;
                    case 2:
                        RemoverAluno();
                        break;
                    case 3:
                        VerificarAluno();
                        break;
                    case 4:
                        QuantidadeLista();
                        break;
                    case 0:
                        Console.WriteLine("Saindo do programa...");
                        break;
                    default:
                        Console.WriteLine("Opção inválida! Tente novamente.");
                        break;
                }
            } else {
                Console.WriteLine("Entrada inválida! Digite um número.");
            }

            Console.WriteLine("\nPressione qualquer tecla para continuar...");
            Console.ReadKey(); 

        } while (opcao != 0);
    }
    
        static void CadastrarAluno(){
            Console.WriteLine("Digite o nome do aluno para cadastro: ");
            string nome = Console.ReadLine();
            aluno.Add(nome);
            Console.WriteLine($"{nome} cadastrado com sucesso");
        }
        
        static void RemoverAluno(){
            Console.WriteLine("Digite o nome do aluno que deseja remover");
            string nome = Console.ReadLine();
            
        if(aluno.Remove(nome)) {
            Console.WriteLine($"Aluno {nome} removido com sucesso");
        
           } else{ Console.WriteLine("Aluno não encontrado");
        }
    }
    
        static void VerificarAluno(){
            Console.WriteLine("Digite qual nome do aluno deseja achar: ");
            string nome = Console.ReadLine();
            
            if(aluno.Contains(nome)){
                Console.Write($"Alunoe {nome} esta na lista!");
                
            } else { 
                Console.Write("Esse aluno não esta na lista");
        }
    }
         static void QuantidadeLista() {
        Console.WriteLine($"Número total de alunos cadastrados: {aluno.Count}");
    }
}
