# $OpenBSD: Makefile,v 1.10 2015/04/02 14:21:18 jasper Exp $

COMMENT =	aggregate profiling for wsgi requests

MODPY_EGG_VERSION = 1.4
DISTNAME =	repoze.profile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	0

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
