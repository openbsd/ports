# $OpenBSD: Makefile,v 1.7 2014/07/10 11:06:37 rpe Exp $

MODPY_EGG_VERSION =	1.2.0
COMMENT =	curses-based front-end for livestreamer
GH_ACCOUNT =	gapato
GH_PROJECT =	livestreamer-curses
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	ebf20c2b5ccaba17a1fdd6f7e5e869268e5b230D
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
