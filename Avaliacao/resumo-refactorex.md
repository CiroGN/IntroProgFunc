# Resumo: Building Refactoring Tools: Insights from RefactorEx

Pereira, Vegi e Di Iorio (UFV). SE4FP 2025, p. 9-14.
DOI: https://doi.org/10.5753/se4fp.2025.13088
PDF local: artigos/Pereira-Vegi_RefactorEx_SE4FP2025.pdf

## Contexto e objetivo
Java e Python têm ferramentas de refatoração maduras, mas Elixir não tinha nenhuma bem adotada. Os autores criaram o RefactorEx (plugin de VS Code, depois portado para Neovim) e usam o artigo como relato de experiência: em vez de detalhar só a ferramenta, tiram lições que servem para quem quiser construir algo parecido em outra linguagem funcional. O RefactorEx aplica 29 refatorações, 23 delas do catálogo de refatorações para Elixir de Vegi e Valente (2025). O artigo não tem uma pergunta de pesquisa formal.

## Arquitetura (seção 3)
- LSP (Language Server Protocol): o editor cuida da interface e o servidor faz a refatoração. Por isso a comunidade conseguiu levar a ferramenta para o Neovim quase sem mudanças.
- Bibliotecas prontas: Sourceror (converte código Elixir em AST e de volta, preservando a formatação) e GenLSP (implementa o servidor LSP). O algoritmo de diff de Myers envia ao editor só as linhas que mudaram, em vez do arquivo inteiro.
- Tolerância a falhas: cada refatoração roda num processo supervisionado. Se uma falha num caso inesperado, o resto continua funcionando (o "let it crash" do Elixir/Erlang).

## Implementação (seção 4)
- TDD com exemplos: cada teste traz o código de entrada com marcação da seleção e a saída esperada. Os testes também servem de documentação.
- Template Method: um algoritmo comum faz o parse, localiza a seleção e gera o diff. Cada refatoração só implementa a validação e a transformação, com média de 27 linhas relevantes.
- Composição: refatorações complexas são feitas juntando simples (ex.: Inline Function = Extract Variable + inline + Inline Variable).

## Mecanismos internos (seção 5)
- Trabalham com a AST em vez de texto/regex, com funções auxiliares próprias (comparar nós sem metadados, substituir vários nós de uma vez).
- Achar a seleção na AST foi o maior desafio. Solução: apagar todo o código fora da seleção mantendo as posições, fazer o parse e procurar essa subárvore na AST completa.
- Análise de dependência de variáveis: algoritmo recursivo de fluxo de dados, inspirado em compiladores, que resolve variáveis escopo por escopo. É a base de Rename Variable, Extract Function e Underscore Unused Variables.

## Adoção (seção 6)
Mais de 1.100 downloads no primeiro mês. Os autores atribuem isso a preencher uma lacuna real, à boa documentação, ao código aberto e à divulgação: José Valim (criador do Elixir) compartilhou o projeto e ele foi citado numa palestra da Code BEAM America 2025.

## Conclusão e trabalhos futuros
As práticas (arquitetura com LSP, padrões de projeto, testes sistemáticos, atenção à experiência do usuário) podem guiar ferramentas para outras linguagens funcionais. Próximos passos: refatorações entre arquivos, detecção de code smells, testes baseados em propriedades e integração com o language server oficial do Elixir.

## Pontos fracos (bom para a entrevista)
- Não há avaliação empírica: nenhum experimento com usuários nem medição de corretude das refatorações. Downloads indicam interesse, não qualidade.
- É um relato de experiência de um único projeto, então as lições são generalizações dos próprios autores.
- Os autores declaram que usaram o Claude para transformar o TCC do primeiro autor no artigo de 6 páginas.

---

# Respostas propostas para o formulário

Link DOI: https://doi.org/10.5753/se4fp.2025.13088

Pergunta de pesquisa (o formulário só mostra "Opção 1"):
O artigo não traz uma pergunta explícita por ser um relato de experiência. Resumindo: quais práticas de arquitetura, projeto e implementação ajudam a construir ferramentas de refatoração para linguagens funcionais, a partir do caso do RefactorEx em Elixir?

Fase do método mais importante:
A forma como eles localizam a seleção do usuário dentro da AST. Em vez de percorrer a árvore comparando posições, apagam todo o código fora do trecho selecionado (mantendo as posições), fazem o parse e procuram essa subárvore na AST completa. Toda refatoração depende de saber exatamente qual código o usuário marcou, e a solução deles é simples e evita um problema chato de mapeamento de posições.

Conclusão mais interessante:
Que a adoção dependeu tanto da divulgação quanto da parte técnica. A ferramenta passou de 1.100 downloads no primeiro mês, e os autores ligam isso ao José Valim ter compartilhado o projeto e à menção na Code BEAM America 2025. Também me chamou atenção que, com o Template Method, cada refatoração ficou com umas 27 linhas relevantes.

Artigo complementar:
Faria a avaliação que o artigo não tem. Aplicaria as refatorações do RefactorEx em projetos Elixir reais do GitHub e verificaria se o comportamento é preservado com testes baseados em propriedades, que os próprios autores citam como trabalho futuro. Depois faria um questionário com desenvolvedores Elixir para saber quais refatorações eles mais usam e onde a ferramenta falha.

Outro comentário:
A pergunta sobre a pergunta de pesquisa apareceu só com a alternativa "Opção 1", sem campo de texto. Minha resposta seria: quais práticas de arquitetura, projeto e implementação ajudam a construir ferramentas de refatoração para linguagens funcionais, a partir do caso do RefactorEx?
