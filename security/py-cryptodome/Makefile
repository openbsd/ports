# $OpenBSD: Makefile,v 1.3 2018/06/02 11:47:13 jasper Exp $

COMMENT =	self-contained cryptographic library for Python

# Using py-cryptodomex to prevent a conflict with py-crypto.
# Switch to py-cryptodome when py-crypto has been removed.
MODPY_EGG_VERSION =	3.6.1
DISTNAME =	pycryptodome-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

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
SUBST_VARS +=		AESNI_COMMENT

RUN_DEPENDS =		devel/gmp

.include <bsd.port.arch.mk>

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
AESNI_COMMENT =
.else
AESNI_COMMENT = "@comment "
.endif

.include <bsd.port.mk>
