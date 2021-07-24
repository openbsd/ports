# $OpenBSD: Makefile,v 1.1.1.1 2021/07/24 21:24:57 kn Exp $

COMMENT =	HMAC-based Extract-and-Expand Key Derivation Function (HKDF)

MODPY_EGG_VERSION =	0.0.3
DISTNAME =		hkdf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/casebeer/python-hkdf

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=		python3

.include <bsd.port.mk>
