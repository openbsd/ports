# $OpenBSD: Makefile,v 1.9 2017/11/14 15:59:27 rpointel Exp $

COMMENT=		fixed size round-robin style database

MODPY_EGG_VERSION=	1.0.2

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
