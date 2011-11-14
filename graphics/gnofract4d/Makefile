# $OpenBSD: Makefile,v 1.1.1.1 2011/11/14 11:01:16 bentley Exp $

COMMENT =		fractal image generator

DISTNAME =		gnofract4d-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	3.14

CATEGORIES =		graphics

HOMEPAGE =		http://gnofract4d.sourceforge.net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += m png stdc++ z ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnofract4d/}

MODULES =		lang/python
RUN_DEPENDS =		x11/py-gtk2

NO_REGRESS =		Yes

.include <bsd.port.mk>
