import java.io.*;
import java_cup.runtime.*;

public class Main {
    public static void main(String[] args) {
        try {
            // Verifica se o arquivo de entrada foi especificado
            if (args.length < 1) {
                System.err.println("Uso: java Main <arquivo_de_entrada>");
                return;
            }

            // Criação do scanner (lexer) e passando o arquivo de entrada
            scanner scan = new scanner(new FileReader(args[0]));

            // Criação do parser e passando o scanner para ele
            parser p = new parser(scan);

            // Processa todas as expressões no arquivo
            try {
                p.parse();
            } catch (RuntimeException re) {
                System.err.println("Erro de execução: " + re.getMessage());
                re.printStackTrace();
            }

        } catch (FileNotFoundException fnfe) {
            System.err.println("Erro: Arquivo não encontrado.");
            fnfe.printStackTrace();
        } catch (Exception e) {
            System.err.println("Erro inesperado durante a execução:");
            e.printStackTrace();
        }
    }
}
