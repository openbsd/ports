# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:15 sthen Exp $

COMMENT=		convert profilers output into a dot(1) graph

GH_ACCOUNT=		jrfonseca
GH_PROJECT=		gprof2dot
GH_TAGNAME=		2021.02.21

MODPY_EGG_VERSION=	${GH_TAGNAME:C/\.0/./g}
REVISION=		0

CATEGORIES=		graphics

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		math/graphviz

do-test:
	${MODPY_BIN} ${WRKSRC}/tests/test.py

.include <bsd.port.mk>
