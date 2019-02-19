FROM node:10-slim

LABEL version="1.0.0"
LABEL "repository"="https://github.com/jzweifel/pr-status-giphy-action"
LABEL "homepage"="http://github.com/jzweifel"
LABEL "maintainer"="Jacob Zweifel <jacob@jacobzweifel.com>"

LABEL "com.github.actions.name"="Pull Request Status Giphy Action"
LABEL "com.github.actions.description"="A GitHub Action that displays a random thumbs up or thumbs down gif from Giphy when all checks on a Pull Request complete."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="gray-dark"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]