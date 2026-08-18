@echo off
chcp 65001 > nul
echo ==========================================================
echo  Iniciando compilação do LaTeX (main.tex)...
echo ==========================================================

rem Comando de compilação (rodando várias vezes para fechar referências)
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

echo ==========================================================
rem Verifica se a compilação gerou o main.pdf com sucesso
if exist main.pdf (
    echo ✅ Sucesso! O PDF foi gerado como main.pdf
) else (
    echo ❌ Erro: O arquivo main.pdf não foi gerado. Verifique os erros de compilação do LaTeX.
)
echo ==========================================================
pause
