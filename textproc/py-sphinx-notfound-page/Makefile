# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:16 sthen Exp $

COMMENT =		Sphinx extension to build a 404 page with absolute URLs

MODPY_EGG_VERSION =	0.4
DISTNAME =		sphinx-notfound-page-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/readthedocs/sphinx-notfound-page

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
