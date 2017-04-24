# $OpenBSD: Makefile,v 1.8 2017/04/24 09:30:00 sthen Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.5.0
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =   security/py-cryptography${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-test \
		devel/py-test-cov \
		devel/py-test-runner

post-install:
	mv ${PREFIX}/bin/pyjwt ${PREFIX}/bin/pyjwt${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
