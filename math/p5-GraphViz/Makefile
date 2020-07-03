# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:28 sthen Exp $

COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GraphViz-2.02
REVISION=	3
CATEGORIES=	math

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IPC-Run \
		devel/p5-Graph \
		math/graphviz \
		math/p5-Math-Bezier

.include <bsd.port.mk>
