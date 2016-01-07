# $OpenBSD: Makefile,v 1.6 2016/01/07 21:35:27 jasper Exp $

COMMENT=		async framework

MODPY_EGG_VERSION =	0.6.2
DISTNAME=		async-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

WANTLIB=		pthread z ${MODPY_WANTLIB}

CFLAGS=			-lz

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
