# Template LaTeX para Projetos de Pesquisa IFPI

Template preparado para projetos de pesquisa do Instituto Federal do Piauí (IFPI), alinhado com as normas ABNT 2023 e com personalizações institucionais em português do Brasil.

## Características

- **Base**: classe `abntex2` atualizada
- **Normas atendidas**: NBR 14724, 6024, 6027, 10520, 6023, 15287 (versões vigentes)
- **Formatação padrão**: margens 3 cm/2 cm, Times New Roman 12 pt, espaçamento 1,5
- **Personalização**: capa, folha de rosto e comandos específicos do IFPI
- **Pronto para uso**: estrutura completa com exemplos comentados
- **Idioma padrão**: português do Brasil (babel `brazil`)

## Como usar

### 1. Personalização dos dados

Edite o arquivo `estrutura/dados.tex` e ajuste os campos:

```latex
% Dados do projeto (estrutura/dados.tex)
\titulo{SEU TÍTULO AQUI}
\autor{SEU NOME COMPLETO}
\orientador{Prof. Dr. Nome do Orientador}
\coorientador{Prof. Dr. Nome do Coorientador} % Opcional
\curso{Nome do Curso}
\campus{Campus IFPI}
\local{Cidade - Estado}
\data{Ano}
```

Para ajustes de pacotes e de formatação geral, utilize `config/config.tex`.

### 2. Estrutura do documento

```
main.tex               # Arquivo principal
config/
    config.tex         # Classe e configurações do documento
    abntex-ifpi.sty    # Personalizações IFPI
estrutura/
    dados.tex          # Dados do projeto de pesquisa
    pre_textuais.tex   # Elementos pré-textuais
    pos_textuais.tex   # Elementos pós-textuais
img/                   # Imagens do documento
referencias.bib        # Bibliografia
README.md              # Este arquivo
```

### 3. Compilação

Execute a sequência completa abaixo para gerar o PDF com referências atualizadas:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Conteúdo do template

### Elementos pré-textuais
- Capa institucional IFPI
- Folha de rosto
- Resumo (português) e abstract (inglês)
- Listas automáticas: figuras, tabelas, abreviaturas, símbolos
- Sumário automático

### Elementos textuais
- Introdução (contexto, problema, justificativa)
- Objetivos (geral e específicos)
- Referencial teórico e estudos relacionados
- Metodologia (modalidade, instrumentos, participantes, ética)
- Resultados esperados
- Cronograma e orçamento

### Elementos pós-textuais
- Referências bibliográficas conforme ABNT 2023
- Apêndices e anexos (opcionais)

## Recursos especiais

- Comando `\inserirfigura{arquivo}{largura}{legenda}{label}` para figuras com fonte padronizada.
- Comandos `\cite{}` e `\citeonline{}` já configurados para ABNT (pacote `abntex2cite`).  
- Ajustes de metadados PDF automáticos (`config/config.tex` + `estrutura/dados.tex`).  
- `preview-server.js` para servir o PDF localmente (`node preview-server.js`).

## Dicas rápidas

- Use `estrutura/dados.tex` para atualizar rapidamente título, autores, orientadores e dados institucionais.  
- Ajustes finos (pacotes adicionais, comandos personalizados) vão em `config/config.tex`.  
- Mantenha imagens em `img/` e referencie com caminhos relativos (`img/arquivo.png`).  
- Sempre recompile na ordem indicada para evitar referências quebradas.  
- Utilize `.gitignore` fornecido para evitar versionar artefatos temporários do LaTeX.

---

**Professor Ronaldo Pires Borges**
