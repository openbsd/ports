# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:35 sthen Exp $

COMMENT =	a generic plug-in system for python

MODPY_EGG_VERSION =	0.5.3
DISTNAME =	plugnplay-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/daltonmatos/plugnplay

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
