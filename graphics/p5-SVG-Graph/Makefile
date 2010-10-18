# $OpenBSD: Makefile,v 1.2 2010/10/18 18:13:15 espie Exp $

COMMENT =		visualize your data in SVG format

DISTNAME =		SVG-Graph-0.02
CATEGORIES =		graphics

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-SVG-Graph/data/
	${INSTALL_DATA} ${WRKSRC}/eg/data/* \
		${PREFIX}/share/examples/p5-SVG-Graph/data
	${INSTALL_DATA} ${WRKSRC}/eg/*.pl ${PREFIX}/share/examples/p5-SVG-Graph/

.include <bsd.port.mk>
