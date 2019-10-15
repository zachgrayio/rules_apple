#!/bin/bash 

set -eu

BINARIES+=()
while [[ $# -gt 0 ]]; do
  arg="$1"
  case $arg in
      --in)
      readonly IN="$2"
      shift
      ;;
      --out)
      readonly OUT="$2"
      shift
      ;;
      --realpath)
      readonly REALPATH="$2"
      shift
      ;;
      *)
      BINARIES+=("$1")
      ;;
  esac
  shift
done

echo "$IN"
echo "$OUT"
echo "${BINARIES[@]}"

# TODO: check all archs from BINARIES and remove the ones from IN that are not present in BINARIES. Write the output to OUT
touch "$OUT"