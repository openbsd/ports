COMMENT=	perl interface to the graphviz graphing tool

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GraphViz-2.26
CATEGORIES=	math

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-IPC-Run \
		devel/p5-Graph \
		math/graphviz \
		math/p5-Math-Bezier \
		sysutils/p5-File-Which

.include <bsd.port.mk>
