# 2–0 · Two-Nil

Blog de análise de dados de futebol, principalmente em R, feito com
[Quarto](https://quarto.org). Bilíngue: português (padrão) e inglês.

- pt-BR: <https://williamorim.github.io/two-nil/>
- en: <https://williamorim.github.io/two-nil/en/>

## Estrutura

```
_quarto.yml          site em pt-BR (2–0) → _site/
index.qmd            listagem de posts
about.qmd
posts/<slug>/index.qmd
en/
  _quarto.yml        site em inglês (2–0) → _site/en/
  index.qmd
  about.qmd
  posts/<slug>/index.qmd
assets/              estilos, favicon e script de troca de idioma
R/                   funções compartilhadas (ex.: theme_two_nil())
render.sh            renderiza os dois sites, na ordem certa
```

Cada idioma é um projeto Quarto separado (o Quarto não permite navbar/título
diferentes por pasta em um único projeto). O site em inglês é gerado dentro de
`_site/en/`.

## Novo post

1. Crie `posts/AAAA-MM-DD-slug/index.qmd` (pt-BR).
2. Crie a tradução em `en/posts/AAAA-MM-DD-slug/index.qmd`, **com o mesmo
   slug** — o botão EN/PT da navbar troca de idioma mantendo o mesmo caminho.
3. Para usar o tema: `source(here::here("R/theme_two_nil.R"))`.

## Renderizar e visualizar

```sh
./render.sh            # site completo em _site/
quarto preview         # preview só do pt-BR
quarto preview en      # preview só do inglês
```

> `quarto render` na raiz limpa `_site/` inteiro (inclusive `_site/en/`),
> por isso o `render.sh` renderiza o pt-BR antes do inglês.

## Publicação (GitHub Pages)

O workflow [`.github/workflows/publish.yml`](.github/workflows/publish.yml)
publica a cada push na `main`. Os resultados do código R ficam congelados em
`_freeze/` e `en/_freeze/` (`execute: freeze: auto`), então o CI não executa as análises:
**renderize localmente e faça commit das pastas `_freeze`** junto com o post.

Configuração única: em *Settings → Pages*, escolha *Source: GitHub Actions*.
