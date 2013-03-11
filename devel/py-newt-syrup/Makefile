# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:26 espie Exp $

PKG_ARCH=		*

COMMENT=		Python framework for creating text-based applications

MODPY_EGG_VERSION=	0.2.0
DISTNAME=		newt_syrup-${MODPY_EGG_VERSION}
PKGNAME=		py-newt-syrup-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://fedorahosted.org/newt-syrup/wiki

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://mcpierce.fedorapeople.org/sources/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/newt

NO_TEST=		Yes

.include <bsd.port.mk>