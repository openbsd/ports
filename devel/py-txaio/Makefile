# $OpenBSD: Makefile,v 1.2 2018/02/27 21:47:38 espie Exp $

COMMENT =	compatibility API between asyncio/Twisted/Trollius

MODPY_EGG_VERSION =	2.8.2
DISTNAME =	txaio-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/crossbario/txaio

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
RUN_DEPENDS =	devel/py-future \
		devel/py-trollius

.include <bsd.port.mk>
