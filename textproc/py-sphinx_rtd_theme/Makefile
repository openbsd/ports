# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:13 sthen Exp $

COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		sphinx_rtd_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

# MIT/OFL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
