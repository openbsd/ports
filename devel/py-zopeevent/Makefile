# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:56 sthen Exp $

COMMENT=	very basic event publishing system from Zope

MODPY_EGG_VERSION=	4.3.0

DISTNAME=	zope.event-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeevent-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	0

# Zope Public License
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
