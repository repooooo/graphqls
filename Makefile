.PHONY: tag last-tag new-tag auth

auth:
	go get github.com/99designs/gqlgen
	go run github.com/99designs/gqlgen generate --config gqlgen-auth.yml

last-tag:
	@echo "Last tag:"
	@git describe --tags --abbrev=0

new-tag:
	@read -p "Enter new tag: " tag; \
	git tag "$$tag"; \
	git push origin "$$tag"; \
	echo "Tag '$$tag' has been successfully added and pushed."

tag: last-tag new-tag
