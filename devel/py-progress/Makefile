# $OpenBSD: Makefile,v 1.3 2019/02/12 06:33:49 rpointel Exp $

COMMENT =		easy to use progressbar library for python

MODPY_EGG_VERSION =	1.4
DISTNAME =		progress-${MODPY_EGG_VERSION}
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
