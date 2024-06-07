COMMENT =	deliver Go binaries as fast and easily as possible

MODGO_MODNAME =	github.com/goreleaser/goreleaser/v2
MODGO_VERSION =	v2.0.0

# https://github.com/goreleaser/goreleaser
HOMEPAGE =	https://goreleaser.com/

DISTNAME =	goreleaser-${MODGO_VERSION}

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS =	-X main.version=${MODGO_VERSION:S/v//}

# Generate shells completion
post-build:
	${MODGO_WORKSPACE}/bin/goreleaser completion bash > ${WRKSRC}/completion.bash
	${MODGO_WORKSPACE}/bin/goreleaser completion fish > ${WRKSRC}/completion.fish
	${MODGO_WORKSPACE}/bin/goreleaser completion zsh > ${WRKSRC}/completion.zsh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completion.bash \
		${PREFIX}/share/bash-completion/completions/goreleaser

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/completion.fish \
		${PREFIX}/share/fish/completions/goreleaser.fish

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completion.zsh \
		${PREFIX}/share/zsh/site-functions/_goreleaser

.include "modules.inc"

.include <bsd.port.mk>
