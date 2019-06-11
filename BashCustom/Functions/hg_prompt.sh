#!/bin/bash

# Nice mercurial prompt output.
hg_prompt() {
  local summary=$(hg summary 2>/dev/null)
  if [[ -z $summary ]]; then return; fi

  local branch=$(echo "$summary" | sed -E -n '/^branch: ([^ ]+).*$/ s//\1/p')

  local commit=$(echo "$summary" | sed -n '/^commit: .*$/p')

  local mod=$(echo "$commit" | sed -n '/.*modified.*/ s//*/p')
  local unk=$(echo "$commit" | sed -n '/.*unknown.*/  s//?/p')
  local add=$(echo "$commit" | sed -n '/.*added.*/    s//+/p')
  local del=$(echo "$commit" | sed -n '/.*removed.*/  s//-/p')

  echo " (Hg:$branch$add$del$mod$unk)"
}
