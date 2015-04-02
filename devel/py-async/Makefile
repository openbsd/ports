# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:14 jasper Exp $

COMMENT=		async framework

MODPY_EGG_VERSION=	0.6.1
DISTNAME=		async-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

WANTLIB=		pthread z ${MODPY_WANTLIB}

CFLAGS=			-lz

MODULES=		lang/python

NO_TEST=		Yes

.include <bsd.port.mk>
