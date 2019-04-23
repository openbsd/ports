# $OpenBSD: Makefile,v 1.4 2019/04/23 16:42:14 landry Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	18.8.1
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
