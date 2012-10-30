# $OpenBSD: Makefile,v 1.14 2012/10/30 14:28:04 sthen Exp $

COMMENT=	Python interface to Graphviz's Dot#'

MODPY_EGG_VERSION= 1.0.28
DISTNAME=	pydot-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	http://code.google.com/p/pydot/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pydot.googlecode.com/files/

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-parsing
RUN_DEPENDS=	devel/py-parsing \
		math/graphviz

NO_REGRESS=	Yes

.include <bsd.port.mk>
