# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:33 sthen Exp $

COMMENT =		immutable dictionary

MODPY_EGG_VERSION =	1.2
DISTNAME =		frozendict-${MODPY_EGG_VERSION}
PKGNAME =		py-frozendict-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/slezica/python-frozendict

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

NO_TEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
