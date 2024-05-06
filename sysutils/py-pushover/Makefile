COMMENT =	send messages via Pushover

MODPY_EGG_VERSION =	0.4
REVISION =	5

EPOCH =		0

DISTNAME =	python-pushover-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/python-//}

CATEGORIES =	sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}>=2.20.0

post-patch:
	cd ${WRKSRC}; 2to3 -w pushover.py

.include <bsd.port.mk>
