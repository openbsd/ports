# $OpenBSD: Makefile,v 1.14 2019/07/12 21:07:47 sthen Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.6.4
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE =	Yes

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
