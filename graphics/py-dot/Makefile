# $OpenBSD: Makefile,v 1.16 2013/08/07 21:32:01 naddy Exp $

COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 1.0.28
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	https://code.google.com/p/pydot/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://pydot.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

NO_TEST=	Yes

.include <bsd.port.mk>
