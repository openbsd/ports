# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:51 sthen Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	18.8.1
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/crossbario/txaio

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS = Yes

.if empty (FLAVOR)
RUN_DEPENDS =	devel/py-future \
		devel/py-trollius
.endif

.include <bsd.port.mk>
