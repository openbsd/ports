# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:47 naddy Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GraphViz-2.02
REVISION=	2
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IPC-Run \
		devel/p5-Graph \
		math/graphviz \
		math/p5-Math-Bezier

.include <bsd.port.mk>
