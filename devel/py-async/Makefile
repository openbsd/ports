# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT=		async framework

MODPY_EGG_VERSION=	0.6.1
DISTNAME=		async-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=a/async/}

WANTLIB=		pthread z ${MODPY_WANTLIB}

CFLAGS=			-lz

MODULES=		lang/python

NO_TEST=		Yes

.include <bsd.port.mk>
