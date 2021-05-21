# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:36 kmos Exp $

COMMENT =		Python module to parse ISO 8601 dates

MODPY_EGG_VERSION =	0.1.14
DISTNAME =		iso8601-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		textproc
REVISION =		0

HOMEPAGE =		https://bitbucket.org/micktwomey/pyiso8601

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

FLAVORS=		python3
FLAVOR?=

.include <bsd.port.mk>
