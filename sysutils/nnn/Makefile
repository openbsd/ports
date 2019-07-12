# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:47 sthen Exp $

COMMENT =		the missing terminal file browser for X

V =			1.8
DISTNAME =		nnn-v${V}
PKGNAME =		nnn-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/jarun/nnn/

MAINTAINER =		Ljuba Nedeljkovic <ljuba.bsd@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/jarun/nnn/releases/download/v${V}/

RUN_DEPENDS =		shells/bash

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/nnn

pre-configure:
	${SUBST_CMD} ${WRKSRC}/nlay

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nnn ${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/nlay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/nnn.1 ${PREFIX}/man/man1/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/scripts/auto-completion/bash/nnn-completion.bash \
		${PREFIX}/share/bash-completion/completions/nnn
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/scripts/auto-completion/fish/nnn.fish \
		${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/scripts/auto-completion/zsh/_nnn \
		${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
