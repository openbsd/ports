# $OpenBSD: Makefile,v 1.44 2022/03/04 21:50:14 sthen Exp $

COMMENT =		WSGI utility collection

MODPY_EGG_VERSION =	2.0.3
DISTNAME =		Werkzeug-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
EPOCH =			0

CATEGORIES =		www devel

HOMEPAGE =		https://palletsprojects.com/p/werkzeug/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
WRKDIST =		${WRKDIR}/${DISTNAME:L}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
# verbose for now, it has been seen hanging at times
MODPY_PYTEST_ARGS =	-v

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-xprocess${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
