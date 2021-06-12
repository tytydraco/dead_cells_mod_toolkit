#!/usr/bin/env bash
root="$(pwd)"
cd tools || exit 1

mkdir -p "$root/dist"

./CDBTool \
    -Collapse \
    -InDir "$root/output_cdb" \
    -OutCDB "$root/output_pak/data.cdb"

./PAKTool \
    -CreateDiffPak \
    -RefPak "$root/input/res.pak" \
    -InDir 'C:\Users\tyler\Desktop\DC\output_pak' \
    -OutPak "$root/dist/res.pak"