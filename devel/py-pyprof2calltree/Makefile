# $OpenBSD: Makefile,v 1.10 2015/09/19 08:27:56 benoit Exp $

COMMENT =	help visualize profiling data collected with the cProfile

MODPY_EGG_VERSION = 1.3.2
DISTNAME =	pyprof2calltree-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://www.bitbucket.org/ogrisel/pyprof2calltree/

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pyprof2calltree
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-pyprof2calltree

.include <bsd.port.mk>
