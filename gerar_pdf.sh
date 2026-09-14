#!/bin/bash

echo "=========================================================="
echo " Iniciando compilação do LaTeX (projeto_de_pesquisa.tex)..."
echo "=========================================================="

# Comando de compilação (rodando várias vezes para fechar referências)
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex
bibtex projeto_de_pesquisa
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex

echo "=========================================================="
# Limpeza de arquivos temporários e auxiliares gerados pelo LaTeX
echo " Limpando arquivos temporários de compilação..."
rm -f *.aux *.bbl *.blg *.brf *.idx *.ilg *.ind *.lof *.log *.lol *.lot *.loq *.out *.toc *.synctex* *.fdb_latexmk *.fls *.bcf *.run.xml
rm -f config/*.aux config/*.log config/*.fls config/*.fdb_latexmk
rm -f estrutura/*.aux estrutura/*.log
echo "=========================================================="

# Verifica se a compilação gerou o projeto_de_pesquisa.pdf com sucesso
if [ -f "projeto_de_pesquisa.pdf" ]; then
    echo "✅ Sucesso! O PDF foi gerado como projeto_de_pesquisa.pdf"
else
    echo "❌ Erro: O arquivo projeto_de_pesquisa.pdf não foi gerado. Verifique os erros de compilação do LaTeX."
fi
echo "=========================================================="

