# $OpenBSD: Makefile,v 1.2 2018/04/27 18:02:59 solene Exp $

COMMENT =		easy to use progressbar library for python

MODPY_EGG_VERSION =	1.3
DISTNAME =		progress-${MODPY_EGG_VERSION}
REVISION =		0
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://github.com/verigak/progress/

MAINTAINER = 		Timo Myyra <timo.myyra@bittivirhe.fi>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
