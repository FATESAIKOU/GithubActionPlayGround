#!/usr/bin/env bash

# By (file) name
curl --request POST \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    https://api.github.com/repos/FATESAIKOU/GithubActionPlayGround/actions/workflows/testWorkflowDispatch.yml/dispatches \
    -d '{"ref": "master", "inputs": {"arg1": "1", "arg2": "2"}}'

# By workflow id
curl --request POST \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    https://api.github.com/repos/FATESAIKOU/GithubActionPlayGround/actions/workflows/11786195/dispatches \
    -d '{"ref": "master", "inputs": {"arg1": "1", "arg2": "2"}}'
