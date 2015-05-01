# $OpenBSD: Makefile,v 1.1.1.1 2015/05/01 21:06:44 ajacoutot Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_COMMIT=		6fbb81559609c12e7c64ae5dce7d102a414a7514

MODPY_EGG_VERSION=	2015.02.03
DISTNAME=		${GH_PROJECT}-${MODPY_EGG_VERSION}

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/jrfonseca/gprof2dot

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

.include <bsd.port.mk>
