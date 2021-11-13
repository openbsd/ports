# $OpenBSD: Makefile,v 1.15 2021/11/13 10:16:38 sthen Exp $

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	iso8601

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
