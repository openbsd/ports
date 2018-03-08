# $OpenBSD: Makefile,v 1.1.1.1 2018/03/08 09:17:04 rpointel Exp $

COMMENT =	a generic plug-in system for python

MODPY_EGG_VERSION =	0.5.3
DISTNAME =	plugnplay-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
