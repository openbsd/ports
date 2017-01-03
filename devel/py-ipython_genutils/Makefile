# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:48 landry Exp $

COMMENT =		IPython vestigial utilities

MODPY_EGG_VERSION =	0.1.0
DISTNAME =		ipython_genutils-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
