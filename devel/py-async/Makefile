# $OpenBSD: Makefile,v 1.7 2017/12/08 12:29:46 jasper Exp $

COMMENT=		async framework

MODPY_EGG_VERSION =	0.6.2
DISTNAME=		async-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

WANTLIB=		pthread z ${MODPY_WANTLIB}

CFLAGS=			-lz

MODULES=		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

NO_TEST=		Yes

.include <bsd.port.mk>
