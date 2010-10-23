# $OpenBSD: Makefile,v 1.4 2010/10/23 11:59:58 jasper Exp $

COMMENT =		visualize your data in SVG format

DISTNAME =		SVG-Graph-0.02
CATEGORIES =		graphics
REVISION =		0

# Artistic License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =	Yes

RUN_DEPENDS =		::devel/p5-Tree-DAG_Node \
			::graphics/p5-SVG \
			::math/p5-Math-Derivative \
			::math/p5-Math-Spline \
			::math/p5-Statistics-Descriptive \

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
