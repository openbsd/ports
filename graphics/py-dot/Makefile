# $OpenBSD: Makefile,v 1.15 2013/03/11 11:10:55 espie Exp $

COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 1.0.28
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	http://code.google.com/p/pydot/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pydot.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

NO_TEST=	Yes

.include <bsd.port.mk>
