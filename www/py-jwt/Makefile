# $OpenBSD: Makefile,v 1.1.1.1 2015/06/26 07:35:50 landry Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.3.0
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =   security/py-cryptography

TEST_DEPENDS =  devel/py-test \
		devel/py-test-cov

.include <bsd.port.mk>
