# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:28 kmos Exp $

COMMENT =	a generic plug-in system for python

MODPY_EGG_VERSION =	0.5.4
DISTNAME =	plugnplay-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/daltonmatos/plugnplay

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
