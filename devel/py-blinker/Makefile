# $OpenBSD: Makefile,v 1.3 2013/12/07 00:15:26 fgsch Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.3
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://pythonhosted.org/blinker/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=/b/blinker/}

MODULES =	lang/python

TEST_DEPENDS =	devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-blinker
	cd ${WRKSRC}/docs/html && pax -rw * ${PREFIX}/share/doc/py-blinker

do-test:
	cd ${WRKSRC} && nosetests tests

.include <bsd.port.mk>
