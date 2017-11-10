# $OpenBSD: Makefile,v 1.2 2017/11/10 20:39:39 danj Exp $

COMMENT =		sphinx theme used by guzzle

MODPY_EGG_VERSION =	0.7.11
REVISION =		0
DISTNAME =		guzzle_sphinx_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-sphinx_guzzle_theme-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

MAINTAINER =		Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

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
