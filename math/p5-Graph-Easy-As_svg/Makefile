COMMENT =		output a Graph::Easy as Scalable Vector Graphics (SVG)

DISTNAME =		Graph-Easy-As_svg-0.28
REVISION =		0

CATEGORIES = 		math graphics
MAINTAINER = 		Johannes Thyssen Tishman <jtt@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE = 	Yes
MODULES = 		cpan

BUILD_DEPENDS =		devel/p5-Module-Build>=0.28
RUN_DEPENDS =		math/p5-Graph-Easy>=0.63 \
			graphics/p5-Image-Info>=1.28
TEST_DEPENDS =          devel/p5-Test-Pod \
                        devel/p5-Test-Pod-Coverage>=1.00
CONFIGURE_STYLE =	modbuild

PKG_ARCH = 		*

.include <bsd.port.mk>
