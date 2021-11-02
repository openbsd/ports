# $OpenBSD: Makefile,v 1.20 2021/11/02 00:01:01 sthen Exp $

COMMENT =		library for getting/setting process names

MODPY_EGG_VERSION =	1.2.2
DISTNAME =		setproctitle-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/dvarrazzo/py-setproctitle

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		pthread

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
