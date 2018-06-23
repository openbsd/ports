# $OpenBSD: Makefile,v 1.3 2018/06/23 17:33:04 landry Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	2.8.2
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/crossbario/txaio

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
