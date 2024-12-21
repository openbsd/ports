COMMENT =	send messages via Pushover

MODPY_DISTV =	0.4
REVISION =	6

EPOCH =		0

DISTNAME =	python-pushover-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/python-//}

CATEGORIES =	sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests>=2.20.0

post-patch:
	cd ${WRKSRC}; 2to3 -w pushover.py

.include <bsd.port.mk>
