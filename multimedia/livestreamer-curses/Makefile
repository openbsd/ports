# $OpenBSD: Makefile,v 1.1.1.1 2014/01/03 01:36:39 bcallah Exp $

GH_VER =	0.21
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

.include <bsd.port.mk>
