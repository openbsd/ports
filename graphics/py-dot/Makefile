# $OpenBSD: Makefile,v 1.5 2007/10/08 08:22:41 steven Exp $

COMMENT=	Python interface to Graphiz's Dot

DISTNAME=	pydot-0.9.10
PKGNAME=	${DISTNAME:S/py/py-/}p0
CATEGORIES=	graphics

HOMEPAGE=	http://dkbza.org/pydot.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://dkbza.org/data/

MODULES=	lang/python

BUILD_DEPENDS=	::devel/py-parsing
RUN_DEPENDS=	::devel/py-parsing \
		::math/graphviz

NO_REGRESS=	Yes

.include <bsd.port.mk>
