# $OpenBSD: Makefile,v 1.6 2018/04/03 21:14:30 pvk Exp $

COMMENT=	very basic event publishing system from Zope

MODPY_EGG_VERSION=	4.3.0

DISTNAME=	zope.event-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeevent-${MODPY_EGG_VERSION}
CATEGORIES=	devel

# Zope Public License
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
