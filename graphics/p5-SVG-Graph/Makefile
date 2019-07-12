# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:07 sthen Exp $

COMMENT =		visualize your data in SVG format

DISTNAME =		SVG-Graph-0.02
CATEGORIES =		graphics
REVISION =		1

# Artistic License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =		devel/p5-Tree-DAG_Node \
			graphics/p5-SVG \
			math/p5-Math-Derivative \
			math/p5-Math-Spline \
			math/p5-Statistics-Descriptive \

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
