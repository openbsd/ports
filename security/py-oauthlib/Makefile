COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 3.2.2

GH_ACCOUNT =	idan
GH_PROJECT =	oauthlib
GH_TAGNAME =	v${MODPY_EGG_VERSION}

PKGNAME =	py-oauthlib-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	security
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-blinker${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
