appNAme:=
branch:=
remoteName:=

b:=master
r:=origin

.PHONY: help
help: ## Show help command
	@printf "Welcome to Boilerplate C3\n";
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ".*Makefile:|:.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$2, $$3}'

.PHONY: cmt
cmt: ## example make cmt c="COMMIT COMMENT"
	git add .
	git commit -am ':hammer: ${c}'

.PHONY: gp
gp: ## example make gp b="branch_name(optional)" r="remote_name(optional)"
	git pull ${r} ${b}
	git push ${r} ${b}

.PHONY: gcb
gcb: ## example make gcb b="NEW_BRANCH_NAME"
	git checkout -b "${b}"

