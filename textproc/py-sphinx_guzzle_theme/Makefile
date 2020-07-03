# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:16 sthen Exp $

COMMENT =		sphinx theme used by guzzle

MODPY_EGG_VERSION =	0.7.11
REVISION =		3
DISTNAME =		guzzle_sphinx_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx_guzzle_theme-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
