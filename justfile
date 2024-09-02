_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers templates/package.tera
  whiskers templates/theme.tera

  for flavor in $(whiskers --list-flavors -o plain ); do
      cp -r "./assets" "./themes/catppuccin-$flavor/assets"
      cp "./LICENSE" "./themes/catppuccin-$flavor/LICENSE"
      cp "./README.md" "./themes/catppuccin-$flavor/README.md"
  done
