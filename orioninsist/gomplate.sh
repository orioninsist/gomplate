#!/usr/bin/env bash

gomplate() {
  local project_dir content_dir template_dir output_dir content template output filename

  project_dir="/home/murat/Project/gomplate/orioninsist"
  content_dir="$project_dir/content"

  template_dir="$project_dir/templates"
 output_dir="$project_dir/output"

  content=$(find "$content_dir" -maxdepth 1 -type f -name '*.json' -printf '%f\n' | sort | fzf --prompt='JSON > ') || return 1

  template=$(find "$template_dir" -maxdepth 1 -type f -name '*.tmpl' -printf '%f\n' | sort | fzf --prompt='Template > ') || return 1

  read -r -p 'Output filename (.md) > ' filename

  [[ -n "$filename" ]] || return 1
  [[ "$filename" == *.md ]] || filename="${filename}.md"
  [[ "$filename" != */* && "$filename" != "." && "$filename" != ".." ]] || return 1

  mkdir -p "$output_dir"
 output="$output_dir/$filename"

  docker run --rm \
    -v "$content_dir:/data:Z" \
    -v "$template_dir:/templates:ro,Z" \
   -v "$output_dir:/output:Z" \
    -w /data \
    hairyhenderson/gomplate \
    --datasource "content=file:///data/$content" \
    --file "/templates/$template" \
    --out "/output/$filename" && printf '✓ %s\n' "$output"
}
