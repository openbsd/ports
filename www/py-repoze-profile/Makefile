# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:48 espie Exp $

COMMENT =	aggregate profiling for wsgi requests

MODPY_EGG_VERSION = 1.4
DISTNAME =	repoze.profile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/repoze.profile/}

RUN_DEPENDS =	www/py-paste \
		www/py-meld3 \
		devel/py-pyprof2calltree
TEST_DEPENDS = ${RUN_DEPENDS}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-profile
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-repoze-profile

.include <bsd.port.mk>
