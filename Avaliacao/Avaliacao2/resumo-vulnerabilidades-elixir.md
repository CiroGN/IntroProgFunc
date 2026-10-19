# Tarefa 06/10: artigo fora do SE4FP/Erlang Workshop

Instrução (Moodle, Prof. Adolfo): encontrar um artigo de programação funcional que não seja do SE4FP nem do Erlang Workshop e preencher o formulário https://forms.gle/k3CVS1VCNZ8RN1L26
Critério extra: o artigo deve servir de base para o trabalho final, então precisa ser algo replicável sem construir um sistema do zero.

## Artigo escolhido
Vision for a Secure Elixir Ecosystem: An Empirical Study of Vulnerabilities in Elixir Programs
Dibyendu Brinto Bose, Kaitlyn Cottrell e Akond Rahman (Tennessee Tech University). ACM Southeast Conference (ACMSE 2022), p. 215-218.
DOI: https://doi.org/10.1145/3476883.3520204
PDF aberto (preprint): https://akondrahman.github.io/files/papers/elixir-acmse2022.pdf
PDF local: Bose-Cottrell-Rahman_VulnerabilidadesElixir_ACMSE2022.pdf

## Resumo
Desenvolvedores costumam ver Elixir como uma linguagem "segura", mas essa percepção não tinha base empírica. Os autores medem com que frequência aparecem correções de vulnerabilidades em projetos Elixir.

Pergunta de pesquisa: com que frequência vulnerabilidades são reportadas em programas Elixir?

Método:
1. Mineração: busca no GitHub por repositórios com Elixir como linguagem principal (31.624), seleção dos 25 com mais estrelas e coleta dos 4.446 commits que alteram arquivos Elixir (2012 a 2020, 1.769 arquivos).
2. Codificação fechada (closed coding) por dois avaliadores com experiência em segurança, que leram cada mensagem de commit:
   - Atividade 1: procurar palavras-chave de segurança vindas de trabalhos anteriores (xss, sql, injection, dos, crash, race, overflow, csrf, bypass, exploit etc.).
   - Atividade 2: decidir se o commit de fato corrige um problema de confidencialidade, integridade ou disponibilidade (filtra falsos positivos da busca por palavra-chave).
   - Atividade 3: medir a concordância com o Kappa de Cohen (0,88, "quase perfeita"). As 101 discordâncias foram resolvidas pelo terceiro autor.
   - O trabalho manual levou 121 e 186 horas.
3. Cálculo da proporção de commits "VULNERABLE" no total e por ano.

Resultados:
- 90 dos 4.446 commits (2,0%) são relacionados a vulnerabilidades.
- 319 dos 1.769 arquivos Elixir (18%) foram modificados por esses commits.
- 9 dos 25 repositórios têm pelo menos um commit desse tipo.
- A proporção por ano é maior em 2020 (3,85%) e 2019 (3,45%).
- O conjunto de dados rotulado foi publicado em CSV.

Conclusão: mesmo sendo vista como segura, Elixir tem vulnerabilidades. Recomendam que desenvolvedores usem análise estática desde cedo (shift left) e que pesquisadores investiguem por que as vulnerabilidades são introduzidas.

Limitações apontadas: viés dos avaliadores, só projetos open source e falsos positivos da busca por palavra-chave.
Limitações que eu vejo: só 25 repositórios, dados até 2020, análise só da mensagem do commit (não do código) e nenhuma classificação por tipo de vulnerabilidade.

## Como pode virar trabalho final
- Replicar o método com dados de 2021 a 2026 (os mesmos 25 projetos ou um novo top 25) e comparar com os resultados originais.
- Aplicar o mesmo método a Erlang ou Gleam e comparar as linguagens da BEAM.
- Classificar os commits encontrados por tipo de vulnerabilidade (ex.: CWE) e por componente (Phoenix, Ecto, processos/OTP).
- Usar um LLM como terceiro avaliador e comparar com a rotulagem humana.

## Respostas para o formulário
Pergunta de pesquisa: Com que frequência vulnerabilidades são reportadas em programas Elixir? Os autores querem verificar com dados se a fama de "linguagem segura" se confirma em projetos reais.

Fase do método: A codificação fechada dos commits. Dois avaliadores com experiência em segurança leram as mensagens dos 4.446 commits. Primeiro procuraram palavras-chave de segurança e depois decidiram se o commit corrigia mesmo um problema de confidencialidade, integridade ou disponibilidade. Essa segunda etapa elimina os falsos positivos da busca por palavra-chave, e a concordância entre eles foi medida com o Kappa de Cohen (0,88).

Conclusão: Que mesmo uma linguagem vista como segura tem vulnerabilidades: 2% dos commits e 18% dos arquivos Elixir analisados estavam ligados a correções de segurança, e 9 dos 25 projetos tinham pelo menos uma. Também achei interessante que a proporção cresceu nos últimos anos analisados, com o pico em 2020.

Artigo complementar: Repetiria o método com dados mais recentes, de 2021 em diante, para ver se a tendência de alta continuou, e aplicaria o mesmo processo em projetos Erlang para comparar as duas linguagens da BEAM. Também classificaria os commits encontrados por tipo de vulnerabilidade, o que o artigo original não faz.

Outro comentário: Escolhi esse artigo pensando no trabalho final, porque o método (minerar commits do GitHub e classificar manualmente) dá para replicar sem precisar desenvolver um sistema. O ponto fraco é a amostra pequena (25 repositórios) e a análise baseada só na mensagem do commit.
