# $OpenBSD: Makefile,v 1.11 2018/04/24 18:46:24 danj Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.6.1
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =   security/py-cryptography${MODPY_FLAVOR}>=1.4.0

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-runner${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/pyjwt ${PREFIX}/bin/pyjwt${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
