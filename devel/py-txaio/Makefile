# $OpenBSD: Makefile,v 1.9 2020/11/23 14:48:21 sthen Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	18.8.1
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/crossbario/txaio

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_SETUPTOOLS = Yes

.include <bsd.port.mk>
