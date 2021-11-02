# $OpenBSD: Makefile,v 1.4 2021/11/02 00:01:03 sthen Exp $

COMMENT =		progress bar for Python

MODPY_EGG_VERSION =	4.52.0
DISTNAME =		tqdm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tqdm/tqdm

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT/MPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
