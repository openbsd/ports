# $OpenBSD: Makefile,v 1.5 2015/09/29 10:51:44 sthen Exp $

COMMENT=		async framework

MODPY_EGG_VERSION =	0.6.2
DISTNAME=		async-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

WANTLIB=		pthread z ${MODPY_WANTLIB}

CFLAGS=			-lz

MODULES=		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
