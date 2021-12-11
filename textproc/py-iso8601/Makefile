# $OpenBSD: Makefile,v 1.17 2021/12/11 10:22:00 sthen Exp $

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	1.0.2
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
