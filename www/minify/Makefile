COMMENT =	minifiers for web formats

MODGO_MODNAME =	github.com/tdewolff/minify/v2
MODGO_VERSION =	v2.24.7

DISTNAME =	minify-${MODGO_VERSION}

CATEGORIES =	www

HOMEPAGE =	https://go.tacodewolff.nl/minify

MAINTAINER =	Igor Zornik <mocheryl@mocheryl.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X 'main.Version=${MODGO_VERSION}'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/minify
	${INSTALL_DATA} ${WRKSRC}/cmd/minify/README.md ${PREFIX}/share/doc/minify/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/cmd/minify/bash_completion \
		${PREFIX}/share/bash-completion/completions/minify

.include "modules.inc"

.include <bsd.port.mk>
