# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:08 sthen Exp $

COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 1.0.28
REVISION=	2
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	https://github.com/erocarrera/pydot

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=pydot/}

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

NO_TEST=	Yes

.include <bsd.port.mk>
