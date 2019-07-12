# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:55 sthen Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	18.8.1
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
