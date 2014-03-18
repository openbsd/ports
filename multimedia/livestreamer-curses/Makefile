# $OpenBSD: Makefile,v 1.4 2014/03/18 23:56:07 bcallah Exp $

MODPY_EGG_VERSION =	1.0.1
COMMENT =	curses-based front-end for livestreamer
DISTNAME =	livestreamer-curses-${MODPY_EGG_VERSION}
DISTFILES =	${DISTNAME}{v${MODPY_EGG_VERSION}}${EXTRACT_SUFX}
CATEGORIES =	multimedia net

HOMEPAGE =	https://github.com/gapato/livestreamer-curses

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/gapato/livestreamer-curses/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	multimedia/livestreamer

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/livestreamer-cursesrc.sample ${PREFIX}/share/examples/livestreamer-curses

.include <bsd.port.mk>
