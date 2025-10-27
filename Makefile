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

## Bump the version (requires: make bump VERSION=x.y.z)
bump:
ifndef VERSION
	$(error VERSION is not set. Use 'make bump VERSION=x.y.z')
endif
	@echo "$(VERSION)" > VERSION
	@echo "🔖 Updated VERSION to $(VERSION)"
	@grep -rl "Version:" . | grep -E '\.md$$' | xargs sed -i '' -E "s/(Version:\*\* v)[0-9]+\.[0-9]+\.[0-9]+/\1$(VERSION)/g"
	@echo "✅ Updated version references in Markdown files."

check-version:
	@echo "🔎 Checking version consistency of version v$(VERSION) ..."
	@grep -rq "v$(VERSION)" semantic_commit_notation.md || (echo "❌ semantic_commit_notation.md version mismatch!"; exit 1)
	@grep -rq "v$(VERSION)" CHANGELOG.md || (echo "❌ CHANGELOG.md version mismatch!"; exit 1)
	@echo "✅ Version numbers are consistent."

# Show the current version from the source of truth -- the VERSION file
show-version:
	@echo "📦 Current version: v$(VERSION)"

# Display available Make commands
help:
	@echo "Available commands:"
	@echo "  make                   - Run 'make lint' (default)"
	@echo "  make lint              - Lint Markdown files for style and format issues"
	@echo "  make fix               - Automatically fix lintable issues (safe fixes only)"
	@echo "  make bump              - Bump the VERSION=x.y.z"
	@echo "  make check-version     - Ensure document version and changelog are consistent"
	@echo "  make show-version      - Show the current document VERSION"
	@echo "  make help              - Show this help message"

.PHONY: default lint fix bump check-version show-version help
