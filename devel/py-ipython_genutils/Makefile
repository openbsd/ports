# $OpenBSD: Makefile,v 1.6 2019/05/13 18:06:43 danj Exp $

COMMENT =		IPython vestigial utilities

MODPY_EGG_VERSION =	0.2.0
DISTNAME =		ipython_genutils-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && LC_CTYPE=C.UTF-8 \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
