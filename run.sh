#!/bin/bash

YOUR_ZEIT_TOKEN="XXX"

for i in {1..20}
do
	curl \
	    -H "Authorization: Bearer ${YOUR_ZEIT_TOKEN}" \
	    -d '{"version": 2, "name": "cowsay-build", "gitSource": {"type": "github", "repoId": 253021436, "ref": "master"}}' \
	    "https://api.zeit.co/v12/now/deployments?teamId=team_JgimPl9u9uauL7E4MjMLt605&forceNew=1&skipAutoDetectionConfirmation=1" &
done
