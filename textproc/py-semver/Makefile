# $OpenBSD: Makefile,v 1.2 2018/07/30 14:07:05 jasper Exp $

COMMENT =		python helper for Semantic Versioning

MODPY_EGG_VERSION =	2.8.1
DISTNAME =		semver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
