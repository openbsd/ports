# $OpenBSD: Makefile,v 1.29 2019/07/12 20:45:49 sthen Exp $

COMMENT=		automated reasoning engine, flow based programming framework

MODPY_EGG_VERSION=	1.7.5
DISTNAME=		ioflo-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/ioflo/ioflo

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

BUILD_DEPENDS=		devel/py-setuptools_git${MODPY_FLAVOR}

.include <bsd.port.mk>
