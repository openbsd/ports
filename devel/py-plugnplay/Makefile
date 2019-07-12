# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:52 sthen Exp $

COMMENT =	a generic plug-in system for python

MODPY_EGG_VERSION =	0.5.3
DISTNAME =	plugnplay-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/daltonmatos/plugnplay

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
