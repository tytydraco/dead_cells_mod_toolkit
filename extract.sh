#!/usr/bin/env bash
root="$(pwd)"
cd tools || exit 1

if [[ ! -f "$root/input/res.pak" ]]
then
    echo "[!] input/res.pak is missing."
    exit 1
fi

mkdir -p "$root/output_pak"
mkdir -p "$root/output_cdb"

./PAKTool \
    -Expand \
    -OutDir "$root/output_pak" \
    -RefPak "$root/input/res.pak"

./CDBTool \
    -Expand \
    -OutDir "$root/output_cdb" \
    -RefCDB "$root/output_pak/data.cdb"