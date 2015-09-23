# $OpenBSD: Makefile,v 1.6 2015/09/23 15:33:38 jca Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.4
REVISION =	0
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://pythonhosted.org/blinker/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}blinker
	cd ${WRKSRC}/docs/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}blinker

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX} tests

.include <bsd.port.mk>
