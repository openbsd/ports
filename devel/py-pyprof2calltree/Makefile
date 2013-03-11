# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:26 espie Exp $

COMMENT =	help visualize profiling data collected with the cProfile

MODPY_EGG_VERSION = 1.1.0
DISTNAME =	pyprof2calltree-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	http://www.bitbucket.org/ogrisel/pyprof2calltree/

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pyprof2calltree/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pyprof2calltree
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-pyprof2calltree

.include <bsd.port.mk>
