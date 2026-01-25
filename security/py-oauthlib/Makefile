COMMENT =	Python library for OAuth

MODPY_DISTV =	3.3.1

GH_ACCOUNT =	idan
GH_PROJECT =	oauthlib
GH_TAGNAME =	v${MODPY_DISTV}

PKGNAME =	py-oauthlib-${MODPY_DISTV}

CATEGORIES =	security
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-blinker \
		security/py-cryptography \
		www/py-jwt

TEST_DEPENDS =	devel/py-coverage \
		devel/py-mock

#FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
