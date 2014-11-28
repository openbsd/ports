# $OpenBSD: Makefile,v 1.2 2014/11/28 21:04:53 sthen Exp $

PKG_ARCH=		*
COMMENT=		small expressive ORM

MODPY_EGG_VERSION=	2.4.3
DISTNAME=		peewee-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

HOMEPAGE=		http://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=		coleifer
GH_PROJECT=		peewee
GH_TAGNAME=		${MODPY_EGG_VERSION}
GH_COMMIT=		77478b4d98ce4dd521c860b3f9fa3ec606a17eec

FLAVORS=		python3
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
