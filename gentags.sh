#!/usr/bin/env bash

git log --grep="^pkg: " --pretty=format:"%H %s" |
while read -r hash msg; do
  pkgname=$(echo "$msg" | sed -E 's/^pkg: ([^: ]+).*/\1/')
  if [ -n "$pkgname" ]; then
    spec="$(git show "$hash:$pkgname/$pkgname.spec" 2>/dev/null)" || continue
    version="$(echo "$spec" | grep 'Version:' | awk '{ print $2 }')"
    release="$(echo "$spec" | grep 'Release:' | awk '{ print $2 }')"
    tag="${pkgname}_${version}"
    if [ "$release" != "%autorelease" ]; then
      tag+="_${release}"
    fi
    if ! grep -q "$tag" <(git tag --list); then
      git tag "$tag" "$hash"
      echo "$tag: tag added to $hash"
    else
      echo "$tag: tag already exists"
    fi
  fi
done
