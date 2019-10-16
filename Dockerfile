FROM prontotools/alpine-git-curl
LABEL "com.github.actions.name"="Github Tag Bump"
LABEL "com.github.actions.description"="Bump and push git tag on merge"
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/naveego/action-tag-release"
LABEL "homepage"="https://github.com/naveego/action-tag-release" 
LABEL "maintainer"="Derek Smith"

COPY ./semver ./contrib/semver
RUN install ./contrib/semver /usr/local/bin
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]