# $OpenBSD: Makefile,v 1.1.1.1 2021/09/01 13:50:50 ajacoutot Exp $

COMMENT=		lightweight template library

MODPY_EGG_VERSION=	3.1.0
DISTNAME=		wheezy.template-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/akornatskyy/wheezy.template

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += pthread

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
