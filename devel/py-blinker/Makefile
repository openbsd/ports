# $OpenBSD: Makefile,v 1.5 2015/09/17 10:09:36 benoit Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.4
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://pythonhosted.org/blinker/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-blinker
	cd ${WRKSRC}/docs/html && pax -rw * ${PREFIX}/share/doc/py-blinker

do-test:
	cd ${WRKSRC} && nosetests tests

.include <bsd.port.mk>
