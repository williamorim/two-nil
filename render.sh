#!/usr/bin/env bash
# Renderiza o site completo: primeiro pt-BR (raiz), depois en/.
# A ordem importa: o render da raiz limpa _site/, incluindo _site/en/.
set -euo pipefail
cd "$(dirname "$0")"
quarto render "$@"
quarto render en "$@"
