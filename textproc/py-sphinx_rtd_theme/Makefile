# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:57 sthen Exp $

COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		sphinx_rtd_theme-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT/OFL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
