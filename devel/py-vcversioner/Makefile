# $OpenBSD: Makefile,v 1.3 2016/05/14 15:03:15 danj Exp $

COMMENT =		use version control tags to discover version numbers

MODPY_EGG_VERSION =	2.16.0.0
DISTNAME =		vcversioner-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/habnabit/vcversioner

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
