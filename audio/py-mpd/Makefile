# $OpenBSD: Makefile,v 1.8 2011/09/16 08:26:11 espie Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=p/python-mpd/}

MODULES =		lang/python

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-mpd
	${INSTALL_DATA} ${WRKSRC}/doc/commands.txt ${PREFIX}/share/doc/py-mpd

.include <bsd.port.mk>
