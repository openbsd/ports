# $OpenBSD: Makefile,v 1.10 2020/07/14 16:52:25 bket Exp $

COMMENT =		the missing terminal file browser for X

V =			3.3
DISTNAME =		nnn-v${V}
PKGNAME =		nnn-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/jarun/nnn/

MAINTAINER =		Martin Ziemer <horrad@horrad.de>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses readline

MASTER_SITES =		https://github.com/jarun/nnn/releases/download/v${V}/

# Uses -std=c11 so cannot use base-gcc
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MAKE_FLAGS =		CFLAGS_OPTIMIZATION=
FAKE_FLAGS =		MANPREFIX="$(PREFIX)/man" \
			PREFIX="${PREFIX}"

USE_GMAKE =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/nnn-${V}

post-install:
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
