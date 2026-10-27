### README.md

# JSON to Markdown with Gomplate

A simple, interactive CLI workflow for generating Markdown files from JSON using [Gomplate](https://github.com/hairyhenderson/gomplate) and Docker.

## Requirements

- Docker
- Bash
- fzf

Gomplate runs inside Docker. No local Gomplate installation is required.

## Project Structure

```
orioninsist/
├── content/       # JSON input files
├── templates/     # Gomplate templates
├── output/        # Generated Markdown files
├── gomplate.sh    # Interactive CLI function
└── README.md
```

## Usage

Run these two commands:

**1. Load the CLI function**

```
source gomplate.sh
```

**2. Generate Markdown**

```
gomplate
```

Select a JSON file, choose a template, and enter an output filename.

The generated Markdown file will be saved in `output/`.

## Example

```
JSON > gfm-test.json
Template > github-flavored-markdown.md.tmpl
Output filename (.md) > example.md
```

Result: `output/example.md`

## Workflow

JSON → Template → Gomplate (Docker) → Markdown

To generate another document, run `gomplate` again.

## Notes

- JSON inputs belong in `content/`.
- Templates belong in `templates/`.
- Generated files are saved in `output/`.
- The CLI currently uses an absolute project path configured in `gomplate.sh`.
- Docker bind mounts use SELinux-compatible options for Fedora Linux.

### Dosyayı oluştur

Aşağıdaki komut mevcut `orioninsist/README.md` dosyasını yeniden oluşturur:

````
cat > README.md <<'EOF'
# JSON to Markdown with Gomplate

A simple interactive CLI for generating Markdown files from JSON using [Gomplate](https://github.com/hairyhenderson/gomplate) and Docker.

## Requirements

- Docker
- Bash
- fzf

Gomplate runs inside Docker. No local installation is required.

## Structure

- `content/` — JSON input files
- `templates/` — Gomplate templates
- `output/` — Generated Markdown files
- `gomplate.sh` — Interactive CLI function

## Usage

Run these two commands from the `orioninsist/` directory:

```bash
source gomplate.sh
````

```
gomplate
```

Select a JSON file, choose a template, and enter an output filename.

Example:

```
JSON > gfm-test.json
Template > github-flavored-markdown.md.tmpl
Output filename (.md) > example.md
```

Result: `output/example.md`

## Workflow

JSON → Template → Gomplate (Docker) → Markdown

Run `gomplate` again to generate another file.

## Notes

- The CLI uses an absolute project path configured in `gomplate.sh`.
- Docker bind mounts include SELinux-compatible options for Fedora Linux.\
  EOF

git status --short\
git diff --check\
cat README.md

