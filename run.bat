@echo off
call cleanup.bat

set "flex=lib\jflex-full-1.9.1.jar"
set "cup=lib\java-cup-11b.jar"
set "libs=.;lib\java-cup-11b.jar;lib\java-cup-11b-runtime.jar;lib\jflex-1.8.2.jar"

echo [INFO] Gerando o scanner com JFlex
java -jar %flex% calc.flex || exit /b

echo [INFO] Gerando o parser com JCup
java -jar %cup% -parser parser -symbols sym calc.cup || exit /b

echo [INFO] Compilando arquivos Java
javac -cp "%libs%" *.java || exit /b

echo [INFO] Executando o programa principal
java -cp "%libs%" Main input.txt || exit /b
