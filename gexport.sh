#!/bin/bash

if [[ $3 ]]; then
	git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT $1^ $2 | xargs tar -rf $3.tar
else
	git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT $1 | xargs tar -rf $2.tar
fi
