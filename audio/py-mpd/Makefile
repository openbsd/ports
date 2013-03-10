# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:05 espie Exp $

COMMENT =	Python MPD client library

MODPY_EGG_VERSION =	0.3.0
DISTNAME =		python-mpd-${MODPY_EGG_VERSION}
PKGNAME =		py-mpd-${MODPY_EGG_VERSION}
REVISION =		2
CATEGORIES =		audio

HOMEPAGE =		http://jatreuman.indefero.net/p/python-mpd/

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/python-mpd/}

MODULES =		lang/python

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mpd
	${INSTALL_DATA} ${WRKSRC}/doc/commands.txt ${PREFIX}/share/doc/py-mpd

.include <bsd.port.mk>
