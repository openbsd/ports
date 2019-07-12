# $OpenBSD: Makefile,v 1.5 2019/07/12 20:44:52 sthen Exp $

COMMENT=		generate a size report for all elements in a structure

DISTNAME=		Devel-Size-Report-0.13
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

RUN_DEPENDS=		devel/p5-Array-RefElem \
			devel/p5-Devel-Size

.include <bsd.port.mk>
