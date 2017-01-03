# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:49 landry Exp $

COMMENT =		use version control tags to discover version numbers

MODPY_EGG_VERSION =	2.16.0.0
DISTNAME =		vcversioner-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
