# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:13 sthen Exp $

COMMENT =		python helper for Semantic Versioning

MODPY_EGG_VERSION =	2.8.1
DISTNAME =		semver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/k-bx/python-semver

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
