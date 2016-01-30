# $OpenBSD: Makefile,v 1.1.1.1 2016/01/30 01:12:30 bentley Exp $

PKG_ARCH =		*

COMMENT =		font family inspired by Highway Gothic

V =			2.1
DISTNAME =		overpass-$V

CATEGORIES =		fonts

HOMEPAGE =		http://overpassfont.org/

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/RedHatBrand/overpass/releases/download/$V/

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/overpass
	${INSTALL_DATA} ${WRKSRC}/"Desktop Fonts"/*.ttf \
		${PREFIX}/share/fonts/overpass

.include <bsd.port.mk>
