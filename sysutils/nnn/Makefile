# $OpenBSD: Makefile,v 1.4 2020/01/13 17:53:31 bket Exp $

COMMENT =		the missing terminal file browser for X

V =			2.8.1
DISTNAME =		nnn-v${V}
PKGNAME =		nnn-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/jarun/nnn/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/jarun/nnn/releases/download/v${V}/

RUN_DEPENDS =		shells/bash

MAKE_FLAGS =		CFLAGS_OPTIMIZATION=

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/nnn

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nnn ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/misc/nlay/nlay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/nnn.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/misc/nlay/nlay.1 ${PREFIX}/man/man1/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/bash/nnn-completion.bash \
		${PREFIX}/share/bash-completion/completions/nnn
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/fish/nnn.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/misc/auto-completion/zsh/_nnn \
		${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
