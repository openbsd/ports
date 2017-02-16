# $OpenBSD: Makefile,v 1.5 2017/02/16 10:45:45 sthen Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_TAGNAME=		2016.10.13

MODPY_EGG_VERSION=	${GH_TAGNAME}

CATEGORIES=		graphics

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

.include <bsd.port.mk>
