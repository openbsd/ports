# $OpenBSD: Makefile,v 1.11 2021/11/20 14:31:08 sthen Exp $

COMMENT =		GitHub Flavored Markdown extension

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		py-gfm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py-/py/}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/zopieux/py-gfm

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
