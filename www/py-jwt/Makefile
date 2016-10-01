# $OpenBSD: Makefile,v 1.6 2016/10/01 15:14:45 danj Exp $

COMMENT =	JSON Web Token implementation in Python

MODPY_EGG_VERSION = 1.4.2
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

RUN_DEPENDS =   security/py-cryptography${MODPY_FLAVOR}

# tests are available, but need pytest-runner plus dep's (which aren't in
# tree) at build time; if adding these, remove patch-setup_py
NO_TEST =	Yes

post-install:
	mv ${PREFIX}/bin/jwt ${PREFIX}/bin/jwt${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
