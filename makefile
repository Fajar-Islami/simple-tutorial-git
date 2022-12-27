appNAme:=
branch:=
remoteName:=

b:=master
r:=origin

.PHONY: help
help: ## Show help command
	@printf "List Makefile Command";
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ".*Makefile:|:.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$2, $$3}'

cmt: ## example : make cmt="COMMIT COMMENT"
	git add .
	git commit -am '${c}'

gp: ## example : make gp b="branch_name(optional)" r="remote_name(optional)"
	git pull ${r} ${b}
	git push ${r} ${b}

gcb:
	git checkout -b "${b}"

