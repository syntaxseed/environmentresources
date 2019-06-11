#!/bin/bash

heading() {
  # or "\e" on *nix
  HEAD="\033[96m\033[1m"
  DONE="\033[0m"
  echo -e "${HEAD}${1}${DONE}"
}

# 0) find local git repo, or fail now
GIT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
if [[ "$GIT_ROOT" == "" ]]; then
  echo "! Can't find nearby git repository." >&2
  exit 1
fi

# 1) show git branches
heading Branches
git branch --color -v
echo

# 2) file status
heading Status
git status
echo

# 3) stashed changes
if [[ -n $(git stash list) ]]; then
  heading Stash
  git stash list | sed "s/^/  /"
  echo
fi

# 4) divergence from source
UPSTREAM=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)
if [[ -n "${UPSTREAM}" ]]; then
  heading "Upstream [${UPSTREAM}] Divergence"
  git diff -r $UPSTREAM --name-only --color | sed "s/^/  /"
else
  heading "WARNING- No upstream configured."
fi
echo
