# $OpenBSD: Makefile,v 1.5 2020/01/24 08:03:49 benoit Exp $

PKG_ARCH =		*

COMMENT =		font family inspired by Highway Gothic

V =			3.0.4
DISTNAME =		overpass-$V

CATEGORIES =		fonts

HOMEPAGE =		https://overpassfont.org/

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		RedHatBrand
GH_PROJECT =		Overpass
GH_TAGNAME =		$V

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
