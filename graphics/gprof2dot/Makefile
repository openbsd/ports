# $OpenBSD: Makefile,v 1.4 2016/11/01 21:25:05 jasper Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_TAGNAME=		2016.10.13

MODPY_EGG_VERSION=	${GH_TAGNAME}

CATEGORIES=		graphics

HOMEPAGE=		https://github.com/jrfonseca/gprof2dot

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

.include <bsd.port.mk>
