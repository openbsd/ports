# $OpenBSD: Makefile,v 1.10 2020/05/25 06:05:52 bentley Exp $

PKG_ARCH =	*

COMMENT =	monospace bitmap font, primarily aimed at programmers

DISTNAME =	dina-fonts-2.92
CATEGORIES =	fonts
REVISION =	3

HOMEPAGE =	https://www.dcmembers.com/jibsen/download/61/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

EXTRACT_SUFX =	.zip
MASTER_SITES =	https://sizeofvoid.org/pub/OpenBSD/distfiles/

NO_BUILD =	Yes
NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR=	${PREFIX}/share/fonts/dina

WRKSRC =	${WRKDIR}/BDF

do-install:
	bdftopcf -t -o ${WRKSRC}/DinaItalic10.pcf ${WRKSRC}/Dina_i400-10.bdf
	bdftopcf -t -o ${WRKSRC}/DinaItalic8.pcf ${WRKSRC}/Dina_i400-8.bdf
	bdftopcf -t -o ${WRKSRC}/DinaItalic9.pcf ${WRKSRC}/Dina_i400-9.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBoldItalic10.pcf ${WRKSRC}/Dina_i700-10.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBoldItalic8.pcf ${WRKSRC}/Dina_i700-8.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBoldItalic9.pcf ${WRKSRC}/Dina_i700-9.bdf
	bdftopcf -t -o ${WRKSRC}/DinaMedium10.pcf ${WRKSRC}/Dina_r400-10.bdf
	bdftopcf -t -o ${WRKSRC}/DinaMedium8.pcf ${WRKSRC}/Dina_r400-8.bdf
	bdftopcf -t -o ${WRKSRC}/DinaMedium9.pcf ${WRKSRC}/Dina_r400-9.bdf
	bdftopcf -t -o ${WRKSRC}/DinaMedium6.pcf ${WRKSRC}/Dina_r400-6.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBold10.pcf ${WRKSRC}/Dina_r700-10.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBold8.pcf ${WRKSRC}/Dina_r700-8.bdf
	bdftopcf -t -o ${WRKSRC}/DinaBold9.pcf ${WRKSRC}/Dina_r700-9.bdf
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-dina
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dina-fonts
	${INSTALL_DATA} ${WRKDIR}/LICENSE ${PREFIX}/share/doc/dina-fonts


.include <bsd.port.mk>
