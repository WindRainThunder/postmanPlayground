# ReqRes API Tests

Repozytorium testów API w Postmanie dla ReqRes, utrzymywane w modelu plikowym Postman Native Git.

## Cel projektu

Projekt służy do rozwijania i uruchamiania testów API dla ReqRes.
Testy są edytowane lokalnie w Postmanie i wersjonowane w GitHubie.
Po każdym pushu i pull requeście GitHub Actions uruchamia całą kolekcję testową.

## Struktura projektu

- `postman/collections/ReqRes API Tests/` — kolekcja testów podzielona na foldery obszarów.
- `postman/environments/DEV.environment.yaml` — środowisko lokalne i pipeline.
- `postman/globals/workspace.globals.yaml` — zmienne globalne workspace.
- `.github/workflows/postman-tests.yml` — workflow GitHub Actions.

## Zakres testów

- Authentication
- Users

## Sposób pracy

1. Otwórz repo lokalnie w Postmanie.
2. Dodaj lub zmień request albo test.
3. Zapisz zmiany.
4. Wykonaj commit i push.
5. GitHub Actions uruchomi testy automatycznie.

## Uruchamianie lokalne

### 1. Walidacja workflow

```bash
./scripts/validate-workflow.sh
```

### 2. Uruchomienie testów Postmana lokalnie

```bash
./scripts/run-postman-local.sh
```

### 3. Uruchomienie workflow lokalnie

```bash
./scripts/run-workflow-local.sh
```

## CI

Workflow uruchamia się na:

- `push`
- `pull_request`
- `workflow_dispatch`

## Bezpieczeństwo

Repo nie przechowuje wrażliwych danych.
Sekrety, jeśli będą potrzebne w przyszłości, powinny trafiać do GitHub Secrets, a nie do plików repo.
