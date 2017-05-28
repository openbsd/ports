# $OpenBSD: Makefile,v 1.12 2017/05/28 13:48:23 jasper Exp $

COMMENT=		iCalendar library for Python

MODPY_EGG_VERSION =	0.9.4.1
DISTNAME=		vobject-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc devel

HOMEPAGE=		http://eventable.github.io/vobject/

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python
MODPY_PI=		Yes
FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
