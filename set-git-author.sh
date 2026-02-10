#!/bin/bash
# Set Git author and email, and disable commit signing for this repo

show_help() {
  echo "Usage: $0 [--all] [--help|-h]"
  echo "  --all     Rewrite all past commits to use CovenDeity <CovenDeity@protonmail.com> as author/committer."
  echo "  --help,-h Show this help message."
  echo "  (No options: only set config for future commits)"
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  show_help
  exit 0
fi

if [[ "$1" == "--all" ]]; then
  echo "Rewriting all commits to set author/committer to CovenDeity <CovenDeity@protonmail.com>..."
  FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch --env-filter '
    export GIT_AUTHOR_NAME="CovenDeity"
    export GIT_AUTHOR_EMAIL="CovenDeity@protonmail.com"
    export GIT_COMMITTER_NAME="CovenDeity"
    export GIT_COMMITTER_EMAIL="CovenDeity@protonmail.com"
  ' --tag-name-filter cat -- --all
  echo "All commits updated."
fi

git config user.name "CovenDeity"
git config user.email "CovenDeity@protonmail.com"
git config commit.gpgsign false

echo "Git author set to CovenDeity <CovenDeity@protonmail.com> and commit signing disabled."
