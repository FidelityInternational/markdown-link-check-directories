# Markdown Link Check (directories)

An extension of tcort/markdown-link-check, used for recursively scanning links in directories containing markdown.

## To test locally

```bash
docker build .

# run image with attached volume to check links of markdown files
docker run -ti -v <path to dir to scan>:/docs:ro --rm -e CONFIG_PATH=<path to config> -e CHECK_DIR=/docs <image id>
```
