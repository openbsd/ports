# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:46 espie Exp $

COMMENT=		iCalendar library for Python

MODPY_EGG_VERSION=	0.8.1c
DISTNAME=		vobject-${MODPY_EGG_VERSION}
PKGNAME=		py-vobject-${MODPY_EGG_VERSION}

CATEGORIES=		textproc devel

HOMEPAGE=		http://vobject.skyhouseconsulting.com/

# Apache 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil

NO_TEST=		Yes

.include <bsd.port.mk>
