# $OpenBSD: Makefile,v 1.8 2021/10/24 09:28:51 sthen Exp $

COMMENT =		SPDX license list query tool

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		spdx-lookup-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-lookup-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/bbqsrc/spdx-lookup-python

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-spdx${MODPY_FLAVOR}

NO_TEST =		No tests written by upstream

.include <bsd.port.mk>
