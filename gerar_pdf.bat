@echo off
chcp 65001 > nul
echo ==========================================================
echo  Iniciando compilação do LaTeX (projeto_de_pesquisa.tex)...
echo ==========================================================

rem Comando de compilação (rodando várias vezes para fechar referências)
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex
bibtex projeto_de_pesquisa
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex
pdflatex -interaction=nonstopmode projeto_de_pesquisa.tex

echo ==========================================================
rem Limpeza de arquivos temporários e auxiliares gerados pelo LaTeX
echo  Limpando arquivos temporários de compilação...
del /q /f *.aux *.bbl *.blg *.brf *.idx *.ilg *.ind *.lof *.log *.lol *.lot *.loq *.out *.toc *.synctex* *.fdb_latexmk *.fls *.bcf *.run.xml 2>nul
del /q /f config\*.aux config\*.log config\*.fls config\*.fdb_latexmk 2>nul
del /q /f estrutura\*.aux estrutura\*.log 2>nul
echo ==========================================================

rem Verifica se a compilação gerou o projeto_de_pesquisa.pdf com sucesso
if exist projeto_de_pesquisa.pdf (
    echo ✅ Sucesso! O PDF foi gerado como projeto_de_pesquisa.pdf
) else (
    echo ❌ Erro: O arquivo projeto_de_pesquisa.pdf não foi gerado. Verifique os erros de compilação do LaTeX.
)
echo ==========================================================
pause

