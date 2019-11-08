# $OpenBSD: Makefile,v 1.16 2019/11/08 09:09:19 kmos Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 2.1.0

GH_ACCOUNT =	idan
GH_PROJECT =	oauthlib
GH_TAGNAME =	v${MODPY_EGG_VERSION}

PKGNAME =	py-oauthlib-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PYTEST =	Yes

RUN_DEPENDS =	devel/py-blinker${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

FIX_EXTRACT_PERMISSIONS =	Yes

# tests/oauth2/rfc5849/endpoints/test_error_responses.py
# will throw a warning when make test is run under
# the python3 flavor, fixing this breaks python2 though.

.include <bsd.port.mk>
