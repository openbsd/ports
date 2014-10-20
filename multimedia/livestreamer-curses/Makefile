# $OpenBSD: Makefile,v 1.8 2014/10/20 02:28:57 bcallah Exp $

MODPY_EGG_VERSION =	1.3.0
COMMENT =	curses-based front-end for livestreamer
GH_ACCOUNT =	gapato
GH_PROJECT =	livestreamer-curses
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	a202881c6d39eba78873a0057b54edadcf6ad289
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}
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
