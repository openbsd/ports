PKG_ARCH =	*

COMMENT =	monospace bitmap font, primarily aimed at programmers

DISTNAME =	dina-fonts-2.92
CATEGORIES =	fonts
REVISION =	5

HOMEPAGE =	https://www.dcmembers.com/jibsen/download/61/

# MIT
PERMIT_PACKAGE = Yes

EXTRACT_SUFX =	.zip
MASTER_SITES =	https://sizeofvoid.org/pub/OpenBSD/distfiles/

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR=	${PREFIX}/share/fonts/dina

WRKSRC =	${WRKDIR}/BDF

do-build:
	mv ${WRKSRC}/Dina_i400-10.bdf ${WRKSRC}/DinaItalic10.bdf
	mv ${WRKSRC}/Dina_i400-8.bdf ${WRKSRC}/DinaItalic8.bdf
	mv ${WRKSRC}/Dina_i400-9.bdf ${WRKSRC}/DinaItalic9.bdf
	mv ${WRKSRC}/Dina_i700-10.bdf ${WRKSRC}/DinaBoldItalic10.bdf
	mv ${WRKSRC}/Dina_i700-8.bdf ${WRKSRC}/DinaBoldItalic8.bdf
	mv ${WRKSRC}/Dina_i700-9.bdf ${WRKSRC}/DinaBoldItalic9.bdf
	mv ${WRKSRC}/Dina_r400-10.bdf ${WRKSRC}/DinaMedium10.bdf
	mv ${WRKSRC}/Dina_r400-8.bdf ${WRKSRC}/DinaMedium8.bdf
	mv ${WRKSRC}/Dina_r400-9.bdf ${WRKSRC}/DinaMedium9.bdf
	mv ${WRKSRC}/Dina_r400-6.bdf ${WRKSRC}/DinaMedium6.bdf
	mv ${WRKSRC}/Dina_r700-10.bdf ${WRKSRC}/DinaBold10.bdf
	mv ${WRKSRC}/Dina_r700-8.bdf ${WRKSRC}/DinaBold8.bdf
	mv ${WRKSRC}/Dina_r700-9.bdf ${WRKSRC}/DinaBold9.bdf
	for bdf in ${WRKSRC}/*.bdf; do \
		dst=`dirname $$bdf`/`basename $$bdf .bdf`; \
		${X11BASE}/bin/bdftopcf -t $$bdf |gzip -9 >$$dst.pcf.gz; \
		${X11BASE}/bin/fonttosfnt -o $$dst.otb $$bdf; \
	done
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*{.otb,.pcf.gz} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-dina
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dina-fonts
	${INSTALL_DATA} ${WRKDIR}/LICENSE ${PREFIX}/share/doc/dina-fonts


.include <bsd.port.mk>
