# $OpenBSD: Makefile,v 1.18 2016/03/13 08:12:14 shadchin Exp $

COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 1.0.28
REVISION=	2
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	https://github.com/erocarrera/pydot

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://pydot.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

NO_TEST=	Yes

.include <bsd.port.mk>
