programa
{
	inclua biblioteca Arquivos
	inclua biblioteca Texto
	inclua biblioteca Util
	inteiro opcao
	
	funcao inicio()
	{
		faca{

			escreva("informe uma opcao")
			leia(opcao)

			se(opcao == 1){

				lerClientes()
				
			} senao se(opcao == 2){

				adicionarCliente()
				
			} senao se(opcao == 3){

				contarClienteEstado()
				
			} senao se(opcao == 4){

				alterarNomeCliente()
				
			}

			
		}

		enquanto(opcao != 0)
			
			escreva("obrigado por usar nosso programa")
			
	}

	funcao lerClientes(){

		inteiro arquivo = Arquivos.abrir_arquivo("./clientes.txt", Arquivos.MODO_LEITURA)

		enquanto(nao Arquivos.fim_arquivo(arquivo)){

			cadeia linha = Arquivos.ler_linha(arquivo)
			escreva(linha, "/n")
			
		}

		Arquivos.fechar_arquivo(arquivo)
		
	}

	funcao adicionarCliente(){
		
	}

	funcao contarClienteEstado(){
		
	}

	funcao alterarNomeCliente(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 723; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */