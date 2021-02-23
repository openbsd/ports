# $OpenBSD: Makefile,v 1.7 2021/02/23 19:39:25 sthen Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_TAGNAME=		2016.10.13

MODPY_EGG_VERSION=	${GH_TAGNAME}

CATEGORIES=		graphics

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

.include <bsd.port.mk>
