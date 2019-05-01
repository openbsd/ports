# $OpenBSD: Makefile,v 1.12 2019/05/01 21:10:05 danj Exp $

COMMENT =	Python MPD client library

MODPY_EGG_VERSION =	0.3.0
DISTNAME =		python-mpd-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd-${MODPY_EGG_VERSION}
REVISION =		4
CATEGORIES =		audio

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mpd
	${INSTALL_DATA} ${WRKSRC}/doc/commands.txt ${PREFIX}/share/doc/py-mpd

.include <bsd.port.mk>
