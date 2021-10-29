# $OpenBSD: Makefile,v 1.9 2021/10/29 15:38:48 sthen Exp $

COMMENT =		use version control tags to discover version numbers

MODPY_EGG_VERSION =	2.16.0.0
DISTNAME =		vcversioner-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		https://github.com/habnabit/vcversioner

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =	python3

NO_TEST =		Yes

.include <bsd.port.mk>
