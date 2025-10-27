# Requires: markdownlint-cli (https://github.com/igorshubovych/markdownlint-cli)
# Install via: brew install markdownlint-cli

# Markdown files to check
MD_FILES := $(shell find . -name "*.md")

# Document version
VERSION := $(shell cat VERSION)

# Default target: run lint
default: lint

## Run markdownlint to check for issues
lint:
	@echo "🔍 Linting Markdown files..."
	markdownlint $(MD_FILES)

## Automatically fix auto-fixable Markdown issues (trailing spaces, spacing, etc.)
fix:
	@echo "🛠️  Fixing Markdown formatting issues..."
	markdownlint --fix $(MD_FILES)
