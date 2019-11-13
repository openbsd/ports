# $OpenBSD: Makefile,v 1.16 2019/11/13 20:12:47 jasper Exp $

COMMENT =	self-contained cryptographic library for Python

MODPY_EGG_VERSION =	3.9.3
DISTNAME =	pycryptodome-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD + Public Domain
PERMIT_PACKAGE =	Yes

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
