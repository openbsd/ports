# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT =		visualize your data in SVG format

DISTNAME =		SVG-Graph-0.02
CATEGORIES =		graphics
REVISION =		1

# Artistic License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Tree-DAG_Node \
			graphics/p5-SVG \
			math/p5-Math-Derivative \
			math/p5-Math-Spline \
			math/p5-Statistics-Descriptive \

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
