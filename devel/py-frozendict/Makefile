# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:25 kmos Exp $

COMMENT =		immutable dictionary

MODPY_EGG_VERSION =	1.2
DISTNAME =		frozendict-${MODPY_EGG_VERSION}
PKGNAME =		py-frozendict-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/slezica/python-frozendict

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

NO_TEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
