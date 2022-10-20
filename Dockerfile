FROM node:19-slim

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /
COPY ./src /action

ENTRYPOINT ["/action/entrypoint.sh"]

LABEL version="2.0.0"
LABEL "repository"="https://github.com/dgteixeira/pr-status-giphy-action"
LABEL "homepage"="http://github.com/dgteixeira"
LABEL "maintainer"="Diogo Teixeira"

LABEL "com.github.actions.name"="Pull Request Status Checks GIF"
LABEL "com.github.actions.description"="GitHub Action that displays a random thumbs up or thumbs down gif, from Giphy, based on the status of the PR status checks."
LABEL "com.github.actions.icon"="thumbs-up"
LABEL "com.github.actions.color"="gray-dark"
