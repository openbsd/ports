# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:04 sthen Exp $

COMMENT=		lightweight template library

MODPY_EGG_VERSION=	3.1.0
DISTNAME=		wheezy.template-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
