# $OpenBSD: Makefile,v 1.9 2010/06/04 05:27:58 ajacoutot Exp $

COMMENT=	Python interface to Graphviz's Dot

V=		0.9.10
DISTNAME=	pydot-$V
PKGNAME=	${DISTNAME:S/py/py-/}p4
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

SUBST_VARS=	V

NO_REGRESS=	Yes

.include <bsd.port.mk>
