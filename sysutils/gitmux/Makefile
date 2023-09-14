COMMENT =	git in your tmux status bar

MODGO_MODNAME =	github.com/arl/gitmux
MODGO_VERSION =	v0.10.3

DISTNAME =	gitmux-${MODGO_VERSION}

CATEGORIES =	sysutils devel

HOMEPAGE =	https://github.com/arl/gitmux

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gitmux
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/gitmux

.include "modules.inc"

.include <bsd.port.mk>
