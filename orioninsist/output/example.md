
# Complete GitHub Flavored Markdown Example


A comprehensive Markdown document generated from JSON using Gomplate.


**Author:** orioninsist


## Introduction

This document demonstrates **bold**, *italic*, ***bold italic***, ~~strikethrough~~ and `inline code`.

### Links

[Gomplate Documentation](https://docs.gomplate.ca)

<https://github.com/orioninsist/gomplate>

### Images

![Example image](https://placehold.co/800x400/png)

### Video

[Example video link](https://www.youtube.com/)

## Lists

- First item
- Second item
- Third item

1. First ordered item
2. Second ordered item
3. Third ordered item

- Parent item
  - Nested item
  - Another nested item

## Task Lists

- [x] Prepare JSON content
- [x] Select Gomplate template
- [ ] Generate Markdown output

## Blockquotes

> This is a blockquote.
> It supports multiple lines.

## Tables

| Feature | Status | Format |
| --- | --- | --- |
| Headings | Supported | CommonMark |
| Tables | Supported | GFM |
| Task Lists | Supported | GFM |
| Mermaid | Supported on GitHub | GitHub extension |

## Code Blocks

~~~bash
docker run --rm hairyhenderson/gomplate --version
~~~

~~~json
{
  "name": "gomplate",
  "format": "markdown"
}
~~~

## Mermaid Diagram

~~~mermaid
flowchart LR
    A[JSON] --> B[Gomplate]
    B --> C[Markdown]
~~~

## GitHub Alerts

> [!NOTE]
> This is an informational note.

> [!TIP]
> Use reusable templates to keep documents consistent.

> [!IMPORTANT]
> Validate JSON before rendering.

> [!WARNING]
> Check file permissions when using Docker bind mounts.

> [!CAUTION]
> Avoid changing system-wide SELinux settings.

## Collapsible Details

<details>
<summary>Show additional information</summary>

This content is hidden inside an expandable section.

</details>

## Mathematics

Inline math: $E = mc^2$

Block math:

$$
a^2 + b^2 = c^2
$$

## Footnotes

This sentence includes a footnote.[^1]

[^1]: This is the footnote definition.

## Emoji and Mentions

Emoji: :rocket: :white_check_mark: :warning:

Mention example: @orioninsist

## Horizontal Rule

---

## Conclusion

One reusable Gomplate template can generate different Markdown documents using structured JSON content.
