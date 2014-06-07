# $OpenBSD: Makefile,v 1.6 2014/06/07 00:18:50 bcallah Exp $

MODPY_EGG_VERSION =	1.2.0
COMMENT =	curses-based front-end for livestreamer
DISTNAME =	livestreamer-curses-${MODPY_EGG_VERSION}
DISTFILES =	${DISTNAME}{v${MODPY_EGG_VERSION}}${EXTRACT_SUFX}
REVISION =	0
CATEGORIES =	multimedia net

HOMEPAGE =	https://github.com/gapato/livestreamer-curses

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/gapato/livestreamer-curses/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=	lang/python/${MODPY_VERSION},-gdbm \
			multimedia/livestreamer

RUN_DEPENDS =	multimedia/livestreamer

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/livestreamer-cursesrc.sample ${PREFIX}/share/examples/livestreamer-curses

.include <bsd.port.mk>
