COMMENT =	tool for exploring the color space and relations

REVISION =	3

DISTNAME =	ColorExplorer-1.8

CATEGORIES =	graphics
HOMEPAGE =	http://billposer.org/Software/ColorExplorer.html
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv3
PERMIT_PACKAGE =Yes

SITES =		http://billposer.org/Software/Downloads/

MODULES =	x11/tk
MODTK_VERSION =	8.6

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		graphics/xoris

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/ColorExplorer.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ColorExplorer.tcl ${PREFIX}/bin/ColorExplorer

.include <bsd.port.mk>
