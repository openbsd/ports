# $OpenBSD: Makefile,v 1.13 2015/05/23 16:34:40 czarkoff Exp $

MODPY_EGG_VERSION =	1.5.2
COMMENT =	curses-based front-end for livestreamer
GH_ACCOUNT =	gapato
GH_PROJECT =	livestreamer-curses
GH_TAGNAME =	v${MODPY_EGG_VERSION}
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia net

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS +=	lang/python/${MODPY_VERSION},-gdbm \
			multimedia/livestreamer

RUN_DEPENDS =	multimedia/livestreamer

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/livestreamer-cursesrc.sample ${PREFIX}/share/examples/livestreamer-curses

.include <bsd.port.mk>
