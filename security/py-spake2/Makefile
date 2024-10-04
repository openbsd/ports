COMMENT =	SPAKE2 password-authenticated key exchange (pure Python)

MODPY_EGG_VERSION =	0.9
DISTNAME =		spake2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/warner/python-spake2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
