# $OpenBSD: Makefile,v 1.1.1.1 2018/04/29 08:55:50 jasper Exp $

COMMENT =	self-contained cryptographic library for Python

# Using py-cryptodomex to prevent a conflict with py-crypto.
# Switch to py-cryptodome when py-crypto has been removed.
MODPY_EGG_VERSION =	3.6.1
DISTNAME =	pycryptodomex-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD + Public Domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		pthread
MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/gmp

.include <bsd.port.mk>
