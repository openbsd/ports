# $OpenBSD: Makefile,v 1.1.1.1 2004/10/27 17:46:49 xsa Exp $

COMMENT=	"Python interface to Graphiz's Dot"

DISTNAME=	pydot-0.9.9
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	http://dkbza.org/pydot.html

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

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
