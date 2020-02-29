# $OpenBSD: Makefile,v 1.17 2020/02/29 19:34:27 kmos Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 3.1.0

GH_ACCOUNT =	idan
GH_PROJECT =	oauthlib
GH_TAGNAME =	v${MODPY_EGG_VERSION}

PKGNAME =	py-oauthlib-${MODPY_EGG_VERSION}

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
FLAVOR =	python3

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
