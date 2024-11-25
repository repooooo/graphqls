.PHONY: tag last-tag new-tag auth

auth:
	go get github.com/99designs/gqlgen
	go run github.com/99designs/gqlgen generate --config gqlgen-auth.yml

last-tag:
	@echo "Last tag:"
	@git describe --tags --abbrev=0

new-tag:
	@read -p "Enter new tag: " tag; \
	read -p "Are you sure you want to create and push the tag '$$tag'? (y/n): " confirm; \
	if [ "$$confirm" = "y" ] || [ "$$confirm" = "Y" ]; then \
		git tag "$$tag"; \
		git push origin "$$tag"; \
		echo "Tag '$$tag' has been successfully added and pushed."; \
	else \
		echo "Tag creation aborted."; \
	fi

tag: last-tag new-tag
