# Compilador - Trabalho de Aspectos Teóricos da Computação

## Descrição do Projeto

Este é um projeto acadêmico desenvolvido como parte da disciplina de **Aspectos Teóricos da Computação**. O objetivo principal do trabalho é construir um compilador básico, composto pelas etapas de análise léxica e análise sintática, utilizando as ferramentas **JFlex** e **JCup**.

## Autores

- **Dalton Linconl** - Matrícula: 2225913  
- **Marcos Antônio Félix** - Matrícula: 1810440

### Estrutura do Projeto

O compilador foi dividido em três etapas principais:
1. **Analisador Léxico**: Responsável por identificar os tokens (como palavras-chave, identificadores, constantes, operadores, delimitadores e comentários) no código-fonte.
2. **Analisador Sintático**: Verifica a estrutura do código, avaliando se está de acordo com a gramática especificada.
3. **Integração e Execução**: Combina o analisador léxico e sintático, permitindo a execução completa do compilador.

---

## Requisitos

- **Java JDK** (versão 8 ou superior) instalado.
- **JFlex**: Ferramenta para geração de analisadores léxicos.  
  - Disponível em: [JFlex Official Website](https://www.jflex.de/).
- **JavaCup**: Ferramenta para geração de analisadores sintáticos (parser).  
  - Disponível em: [JavaCup GitHub](http://www2.cs.tum.edu/projects/cup/).
- Configuração do ambiente para execução de arquivos `.bat`.

---

## Como Rodar o Compilador

### Passo 1: Preparar o código de entrada
1. Escreva o código que deseja compilar no arquivo `input.txt`.  
   - Este arquivo está localizado na raiz do projeto.
   - Certifique-se de seguir as regras léxicas definidas.

### Passo 2: Executar o compilador
1. Abra o terminal no diretório do projeto.
2. Execute o script `run.bat` utilizando o comando:
   ```bash
   run.bat

- O script automaticamente processará o arquivo input.txt e exibirá os tokens e tipos identificados.

---

## Observações

- Certifique-se de que o arquivo input.txt esteja preenchido corretamente antes de executar o compilador.
