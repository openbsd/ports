# $OpenBSD: Makefile,v 1.8 2017/07/08 16:09:17 jasper Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	1.0.1

DISTNAME=		whisper-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes

RUN_DEPENDS=		net/rrdtool,-python

NO_TEST =		Yes

.include <bsd.port.mk>
