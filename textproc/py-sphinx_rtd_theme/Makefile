# $OpenBSD: Makefile,v 1.2 2017/01/03 19:27:52 landry Exp $

COMMENT =		readthedocs.org theme for Sphinx

MODPY_EGG_VERSION =	0.1.9
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
