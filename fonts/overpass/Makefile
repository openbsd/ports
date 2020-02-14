# $OpenBSD: Makefile,v 1.6 2020/02/14 11:11:33 sthen Exp $

PKG_ARCH =		*

COMMENT =		font family inspired by Highway Gothic

GH_ACCOUNT =		RedHatBrand
GH_PROJECT =		Overpass
GH_TAGNAME =		3.0.4
DISTNAME =		overpass-${GH_TAGNAME}

CATEGORIES =		fonts

HOMEPAGE =		https://overpassfont.org/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/overpass
FONTDIR =		${PREFIX}/share/fonts/overpass

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/desktop-fonts/*/*.otf \
		${WRKSRC}/webfonts/*/*.{ttf,woff,woff2} \
		${PREFIX}/share/fonts/overpass
	${INSTALL_DATA} ${WRKSRC}/{README.md,LICENSE.md} ${DOCDIR}

.include <bsd.port.mk>
