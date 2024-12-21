COMMENT =		IPython vestigial utilities

MODPY_DISTV =	0.2.0
DISTNAME =		ipython_genutils-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		9

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-nose

do-test:
	cd ${WRKSRC} && LC_CTYPE=C.UTF-8 \
	    ${LOCALBASE}/bin/nosetests --first-package-wins

.include <bsd.port.mk>
