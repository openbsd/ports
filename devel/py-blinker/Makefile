# $OpenBSD: Makefile,v 1.11 2019/11/08 14:49:53 kmos Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.4
REVISION =	4
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pythonhosted.org/blinker/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}blinker
	cd ${WRKSRC}/docs/html && \
	    pax -rw * ${PREFIX}/share/doc/${MODPY_PY_PREFIX}blinker

.include <bsd.port.mk>
