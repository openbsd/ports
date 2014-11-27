# $OpenBSD: Makefile,v 1.10 2014/11/27 18:05:18 bcallah Exp $

MODPY_EGG_VERSION =	1.4.0
COMMENT =	curses-based front-end for livestreamer
GH_ACCOUNT =	gapato
GH_PROJECT =	livestreamer-curses
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	61767d87ea97fc7d31f296676a6c77a4d267abc3
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	multimedia net

HOMEPAGE =	https://github.com/gapato/livestreamer-curses

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
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/livestreamer-curses
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/livestreamer-curses
	${INSTALL_DATA} ${WRKSRC}/livestreamer-cursesrc.sample ${PREFIX}/share/examples/livestreamer-curses

.include <bsd.port.mk>
