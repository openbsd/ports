COMMENT =		IPython vestigial utilities

MODPY_EGG_VERSION =	0.2.0
DISTNAME =		ipython_genutils-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		8

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

do-test:
	cd ${WRKSRC} && LC_CTYPE=C.UTF-8 \
	    ${LOCALBASE}/bin/nosetests --first-package-wins

.include <bsd.port.mk>
