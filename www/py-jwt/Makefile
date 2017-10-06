# $OpenBSD: Makefile,v 1.10 2017/10/06 13:46:17 sthen Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.5.3
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

TEST_DEPENDS =	devel/py-test \
		devel/py-test-cov \
		devel/py-test-runner

post-extract:
	@find ${WRKSRC}/tests -name '__pycache__'  -print0 | xargs -0 rm -rf

post-install:
	mv ${PREFIX}/bin/pyjwt ${PREFIX}/bin/pyjwt${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
