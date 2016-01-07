# $OpenBSD: Makefile,v 1.12 2016/01/07 21:35:29 jasper Exp $

COMMENT =	aggregate profiling for wsgi requests

MODPY_EGG_VERSION = 1.4
DISTNAME =	repoze.profile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	2

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-pyprof2calltree
TEST_DEPENDS = ${RUN_DEPENDS}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-profile
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-repoze-profile

.include <bsd.port.mk>
