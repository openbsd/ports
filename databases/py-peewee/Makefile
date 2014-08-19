# $OpenBSD: Makefile,v 1.1.1.1 2014/08/19 08:11:16 zhuk Exp $

PKG_ARCH=		*
COMMENT=		small expressive ORM

MODPY_EGG_VERSION=	2.2.5
DISTNAME=		peewee-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

HOMEPAGE=		http://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=		coleifer
GH_PROJECT=		peewee
GH_TAGNAME=		${MODPY_EGG_VERSION}
GH_COMMIT=		92b1e4d2f286a6b89ebf1231c5b55acbdf285574

FLAVORS=		python3
MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
