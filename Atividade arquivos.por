programa
{
	inclua biblioteca Arquivos
	inclua biblioteca Texto
	inclua biblioteca Util
	inteiro opcao
	
	funcao inicio()
	{
		faca{

			escreva("informe uma opcao \n")
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
			escreva(linha, "\n")
			
		}

		Arquivos.fechar_arquivo(arquivo)
		
	}

	funcao adicionarCliente(){

		inteiro arquivo = Arquivos.abrir_arquivo("./clientes.txt", Arquivos.MODO_ACRESCENTAR)

		cadeia data, nome, cidade, estado

		escreva("Diga sua data de nascimento seguindo dd/mm/aaaa\n")
		leia(data)
		escreva("Diga seu nome completo\n")
		leia(nome)
		escreva("Diga sua cidade natal\n")
		leia(cidade)
		escreva("Esta cidade é de que estado?\n")
		leia(estado)

		cadeia cliente = data + "; " + nome + "; " + cidade + "; " + estado

		Arquivos.escrever_linha(cliente, arquivo)
		Arquivos.fechar_arquivo(arquivo)
	}

	funcao contarClienteEstado(){

		cadeia estado = "CE"
		inteiro numeroDeClientes = 0
		inteiro arquivo = Arquivos.abrir_arquivo("./clientes.txt", Arquivos.MODO_LEITURA)

		enquanto(nao Arquivos.fim_arquivo(arquivo)){

			cadeia linha = Arquivos.ler_linha(arquivo)

			inteiro posicaoTexto = Texto.posicao_texto(estado, linha, 0)

			se(posicaoTexto != -1){
				
				numeroDeClientes++
				
			}
			
		}

		escreva("foram encontrados ", numeroDeClientes, " clientes do Ceará \n")

		Arquivos.fechar_arquivo(arquivo)
		
	}

	funcao alterarNomeCliente(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 721; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */