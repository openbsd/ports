# $OpenBSD: Makefile,v 1.6 2015/12/29 08:54:05 jasper Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	0.9.15

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
