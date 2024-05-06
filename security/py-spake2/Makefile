COMMENT =	SPAKE2 password-authenticated key exchange (pure python)

MODPY_EGG_VERSION =	0.8
DISTNAME =		spake2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		security

HOMEPAGE =		https://github.com/warner/python-spake2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		security/py-hkdf${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
