# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:00 sthen Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_TAGNAME=		2016.10.13

MODPY_EGG_VERSION=	${GH_TAGNAME}

CATEGORIES=		graphics

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

.include <bsd.port.mk>
