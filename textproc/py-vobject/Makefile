# $OpenBSD: Makefile,v 1.11 2017/05/28 13:23:50 jasper Exp $

COMMENT=		iCalendar library for Python

MODPY_EGG_VERSION =	0.9.4.1
DISTNAME=		vobject-${MODPY_EGG_VERSION}

CATEGORIES=		textproc devel

HOMEPAGE=		http://eventable.github.io/vobject/

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil

.include <bsd.port.mk>
