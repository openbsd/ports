# $OpenBSD: Makefile,v 1.5 2017/01/03 19:19:49 landry Exp $

COMMENT=	very basic event publishing system from Zope

MODPY_EGG_VERSION=	4.2.0

DISTNAME=	zope.event-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeevent-${MODPY_EGG_VERSION}
CATEGORIES=	devel
REVISION=	0

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
