# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:16 sthen Exp $

COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		sphinx_rtd_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

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
