# $OpenBSD: Makefile,v 1.1.1.1 2009/12/16 22:18:37 benoit Exp $

COMMENT =		Pyrex generated python interface to PROJ.4 library

MODPY_EGG_VERSION =	1.8.6
DISTNAME =		pyproj-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		geo

HOMEPAGE =		http://code.google.com/p/pyproj/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pyproj.googlecode.com/files/

MODULES =		lang/python

BUILD_DEPENDS +=	${RUN_DEPENDS}
LIB_DEPENDS +=		proj::devel/proj
RUN_DEPENDS +=		::math/py-numpy

do-regress: fake
	cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py
	cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test2.py

.include <bsd.port.mk>
