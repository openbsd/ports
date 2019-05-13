# $OpenBSD: Makefile,v 1.5 2019/05/13 19:03:53 danj Exp $

COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		sphinx_rtd_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

# MIT/OFL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
