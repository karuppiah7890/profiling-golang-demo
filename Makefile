.PHONY: help
help: ## Prints this help
	@grep -E '^[a-zA-Z._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

compile:  ## Compile the program
	go build

run:  ## Run the program
	./xtime go run looptesterapp.go