# $OpenBSD: Makefile,v 1.3 2015/09/29 10:52:55 sthen Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.3.0
DISTNAME =	PyJWT-${MODPY_EGG_VERSION}
PKGNAME =	py-jwt-${MODPY_EGG_VERSION}
CATEGORIES =	www
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	http://github.com/jpadilla/pyjwt

# BSD
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =   security/py-cryptography

# tests are available, but need pytest-runner plus dep's (which aren't in
# tree) at build time; if adding these, remove patch-setup_py
NO_TEST =	Yes

.include <bsd.port.mk>
