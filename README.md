# Template LaTeX para Projetos de Pesquisa — IFPI

Template em LaTeX para elaboração de Projetos de Pesquisa do **Instituto Federal do Piauí (IFPI)**, totalmente alinhado às normas ABNT vigentes (incluindo a NBR 15287 para Projetos de Pesquisa e a NBR 10520:2023 para citações) e ao *Manual de Trabalhos Acadêmicos do IFPI (2024)*.

---

📄 **Visualizar Exemplo da Saída (PDF):**  
Para ver o resultado final formatado, acesse diretamente o modelo compilado:  
👉 **[projeto_de_pesquisa.pdf](projeto_de_pesquisa.pdf)**

---

## 📋 Estrutura dos Elementos do Projeto de Pesquisa

Conforme a norma **ABNT NBR 15287 (Projeto de Pesquisa)** e o **Manual de Normalização de Trabalhos Acadêmicos do IFPI (2024)**, o Projeto de Pesquisa organiza-se na seguinte estrutura obrigatória e opcional:

```text
ESTRUTURA DO PROJETO DE PESQUISA (NBR 15287 / MANUAL IFPI):
├── 1. ELEMENTOS PRÉ-TEXTUAIS
│   ├── Capa (Obrigatório)
│   ├── Folha de Rosto (Obrigatório)
│   ├── (SEM Resumo / Abstract — Ver Nota Normativa abaixo)
│   ├── Lista de Ilustrações (Opcional - figuras, gráficos, fluxogramas)
│   ├── Lista de Quadros (Opcional - dados qualitativos com moldura fechada)
│   ├── Lista de Tabelas (Opcional - dados estatísticos/numéricos com bordas abertas IBGE)
│   ├── Lista de Abreviaturas e Siglas / Símbolos (Opcional)
│   └── Sumário (Obrigatório)
├── 2. ELEMENTOS TEXTUAIS
│   ├── Capítulo 1: Introdução (Problema de Pesquisa, Hipóteses, Objetivos, Justificativa)
│   ├── Capítulo 2: Referencial Teórico (Fundamentação Teórica, Estudos Relacionados)
│   ├── Capítulo 3: Metodologia (Caracterização, População/Amostra, Coleta, Análise, Ética)
│   ├── Capítulo 4: Resultados Esperados (Impactos científicos, sociais e entregáveis)
│   ├── Capítulo 5: Recursos (Humanos, Materiais e Orçamento estimado)
│   └── Capítulo 6: Cronograma de Execução (Mapeamento temporal das atividades)
└── 3. ELEMENTOS PÓS-TEXTUAIS
    ├── Referências (Obrigatório — ABNT NBR 6023 / NBR 10520:2023)
    ├── Apêndices (Opcional — documentos elaborados pelo próprio autor)
    └── Anexos (Opcional — documentos de terceiros)
```

> ℹ️ **Nota Normativa: Por que o Projeto de Pesquisa NÃO tem Resumo nem Abstract?**  
> De acordo com a **ABNT NBR 15287:2011/2025** e o **Manual de Trabalhos Acadêmicos do IFPI (2024, Capítulo 7)**, o Projeto de Pesquisa é a especificação e o planejamento de um empreendimento científico que **será realizado**.  
> Como a pesquisa ainda não foi executada, **não existem resultados consolidados nem conclusões finais** a serem sintetizados em um resumo informativo pré-textual. Portanto, o Projeto de Pesquisa **não possui Resumo nem Abstract** (Resumo em língua estrangeira), seguindo da Folha de Rosto diretamente para as Listas pré-textuais e o Sumário.

> 📐 **Regra de Paginação das Listas Pré-textuais (ABNT NBR 14724:2024 & IFPI)**:  
> - Se o trabalho apresentar poucos elementos ($\le 5$ de cada tipo), estes podem ser reunidos em uma **LISTA DE ILUSTRAÇÕES** mantendo a designação original. Havendo mais de 5 elementos do mesmo tipo (ou seguindo o padrão prático do IFPI), recomenda-se a criação de listas próprias (**LISTA DE ILUSTRAÇÕES**, **LISTA DE QUADROS** e **LISTA DE TABELAS**).  
> - Todos os elementos pré-textuais (com exceção do verso da folha de rosto) devem iniciar obrigatoriamente no anverso (frente) de uma **folha separada** (`\cleardoublepage`).

---

## 📁 Estrutura Completa do Repositório

```text
Template_Projeto_de_Pesquisa_IFPI/
├── projeto_de_pesquisa.tex   # Arquivo principal do projeto (capítulos e seções)
├── projeto_de_pesquisa.pdf   # Modelo compilado em PDF (resultado final)
├── referencias.bib           # Base de dados de referências bibliográficas (BibTeX)
├── gerar_pdf.sh              # Script de compilação automática para Linux / macOS
├── gerar_pdf.bat             # Script de compilação automática para Windows
├── verificar_conformidade.py # Script Python para verificação de conformidade ABNT/IFPI
├── LICENSE                   # Licença de uso do modelo
├── README.md                 # Guia de documentação e utilização
├── config/                   # Configurações do LaTeX e personalizações
│   ├── config.tex            # Pacotes, formatação da classe abntex2 e metadados
│   ├── abntex-ifpi.sty       # Pacote customizado com regras específicas do IFPI
│   └── README.md             # Instruções sobre o diretório de configurações
├── estrutura/                # Módulos de conteúdo e dados do trabalho
│   ├── dados.tex             # Dados cadastrais (título, autor, orientador, campus)
│   ├── pre_textuais.tex      # Elementos pré-textuais (cabeçalho, listas, sumário)
│   ├── pos_textuais.tex      # Elementos pós-textuais (referências, apêndices, anexos)
│   └── README.md             # Orientações sobre a estrutura textual
├── img/                      # Imagens, logotipos e figuras do trabalho
│   ├── Logo-IFPI-Floriano-Horizontal.png
│   ├── Logo-IFPI-Floriano-Vertical.png
│   ├── Logo-IFPI-IF.png
│   ├── tema do tcc.png
│   └── README.md             # Recomendações sobre inclusão de imagens
└── Normas/                   # Acervo de normas ABNT e manuais institucionais em PDF
    ├── ABNT-NBR-6023-Referencias-Bibliograficas.pdf
    ├── ABNT-NBR-6024-Numeracao-progressiva-das-secoes-de-um-documento.pdf
    ├── ABNT-NBR-6027-Sumario.pdf
    ├── ABNT_NBR_14724_2024-1.pdf
    ├── ABNT_NBR_15287-2011_Projeto-de-Pesquisa-1.pdf
    ├── Abnt_nbr_10520_2023.pdf
    ├── Manual TCC - IFPI.pdf
    ├── NBR-15287_2025_Projeto-de-pesquisa.pdf
    ├── Normas de apresentação tabular - IBGE - 1993.pdf
    └── README.md             # Relação descritiva das normas incluídas
```

---

## 🚀 Como Usar

Você pode utilizar este template tanto **localmente em seu computador** (recomendado) quanto via **Overleaf**.

### Opção 1: Uso Local (Linux, Windows ou macOS)

Requer uma distribuição LaTeX instalada:
- **Windows**: [MiKTeX](https://miktex.org/) ou [TeX Live](https://www.tug.org/texlive/)
- **Linux**: TeX Live (`sudo apt install texlive-full` ou pacotes base + `texlive-lang-portuguese` `texlive-publishers`)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)

#### Compilação Automatizada:
O repositório inclui scripts que executam todo o fluxo de compilação (`pdflatex` + `bibtex` + `pdflatex` x2) para gerar o `projeto_de_pesquisa.pdf`:

- **Windows**: Dê um duplo clique no arquivo `gerar_pdf.bat` ou execute no Prompt de Comando (CMD):
  ```cmd
  gerar_pdf.bat
  ```
- **Linux / macOS**: Execute no terminal:
  ```bash
  ./gerar_pdf.sh
  ```

Se preferir utilizar um editor (como VS Code com a extensão *LaTeX Workshop*, TeXstudio ou Texmaker), basta abrir a pasta do projeto e compilar o arquivo principal `projeto_de_pesquisa.tex`.

---

### Opção 2: Uso no Overleaf

1. Baixe o repositório em formato `.zip` (**Code** > **Download ZIP** no GitHub).
2. Acesse o [Overleaf](https://www.overleaf.com/) e clique em **New Project** > **Upload Project**.
3. Envie o arquivo `.zip`. O Overleaf identificará automaticamente o arquivo principal `projeto_de_pesquisa.tex`.

---

## ✏️ Edição do Documento

1. **Dados do Projeto (`estrutura/dados.tex`)**:  
   Preencha o título, subtítulo, nome do autor, orientador, e-mails e vínculo institucional.

2. **Corpo do Texto (`projeto_de_pesquisa.tex`)**:  
   Escreva o conteúdo dos capítulos (Introdução, Referencial Teórico, Metodologia, Resultados Esperados, Recursos e Cronograma).

3. **Citações e Referências (`referencias.bib`)**:  
   Adicione suas referências em formato BibTeX.

> ℹ️ **Regra ABNT NBR 10520:2023 (Citações)**:  
> As chamadas no texto utilizam autor/organização em **minúsculas** com a primeira letra maiúscula (ex: `(Borges, 2026)` e `Organização das Nações Unidas (2026)`). Nas Referências ao final, os nomes/siglas aparecem automaticamente em **CAIXA ALTA**.
>
> Para instituições/organizações no `.bib`, utilize o campo `organization` sem chaves duplas e, se houver sigla, o campo `org-short`:
> ```bibtex
> @manual{ibge2025,
>     organization = {Instituto Brasileiro de Geografia e Estat{\'e}stica},
>     org-short = {IBGE},
>     title = {Normas de Apresenta{\c c}{\~a}o Tabular},
>     year = {2025}
> }
> ```
> *Nota: Proteja caracteres acentuados em `organization` com sintaxe LaTeX (ex: `{\c c}`, `{\~a}`, `{\'e}`).*

---

## 🔍 Verificação de Conformidade

Este template conta com um script em Python para validar a estrutura e conformidade do seu documento:

```bash
python3 verificar_conformidade.py
```

---

- Sempre recompile na ordem indicada para evitar referências quebradas.  
- Utilize `.gitignore` fornecido para evitar versionar artefatos temporários do LaTeX.

---

**Professor Ronaldo Pires Borges**
