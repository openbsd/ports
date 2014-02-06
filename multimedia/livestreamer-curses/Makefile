# $OpenBSD: Makefile,v 1.3 2014/02/06 02:33:00 bcallah Exp $

GH_VER =	0.31
COMMENT =	curses-based front-end for livestreamer
DISTNAME =	livestreamer-curses-${GH_VER}
DISTFILES =	${DISTNAME}{v${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	multimedia net

HOMEPAGE =	https://github.com/gapato/livestreamer-curses

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/gapato/livestreamer-curses/archive/

MODULES =	lang/python

RUN_DEPENDS =	multimedia/livestreamer
# NO_BUILD=Yes but python(1) is used in do-install
BUILD_DEPENDS =	${_MODPY_BUILD_DEPENDS}

SUBST_VARS +=	MODPY_SITEPKG

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	${INSTALL_SCRIPT} ${WRKSRC}/livestreamer-curses.py ${WRKINST}/${MODPY_SITEPKG}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}/${MODPY_SITEPKG}/livestreamer-curses.py
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${FILESDIR}/livestreamer-curses ${PREFIX}/bin/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/livestreamer-cursesrc.sample ${PREFIX}/share/examples/livestreamer-curses

.include <bsd.port.mk>
