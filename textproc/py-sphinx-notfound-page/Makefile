# $OpenBSD: Makefile,v 1.4 2021/03/06 16:00:23 sthen Exp $

COMMENT =		Sphinx extension to build a 404 page with absolute URLs

MODPY_EGG_VERSION =	0.6
DISTNAME =		sphinx-notfound-page-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/readthedocs/sphinx-notfound-page

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

PATCHORIG =		.orig.port

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
