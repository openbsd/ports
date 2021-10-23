# $OpenBSD: Makefile,v 1.1.1.1 2021/09/01 13:51:20 ajacoutot Exp $

COMMENT=		high speed universal character encoding detector

MODPY_EGG_VERSION=	2.1.7
DISTNAME=		cchardet-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/PyYoshi/cChardet

# MPL 1.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
