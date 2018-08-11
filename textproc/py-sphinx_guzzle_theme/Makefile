# $OpenBSD: Makefile,v 1.3 2018/08/11 07:40:56 bket Exp $

COMMENT =		sphinx theme used by guzzle

MODPY_EGG_VERSION =	0.7.11
REVISION =		1
DISTNAME =		guzzle_sphinx_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx_guzzle_theme-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# MIT/OFL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
