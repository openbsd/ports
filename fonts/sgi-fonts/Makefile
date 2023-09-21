COMMENT =	bitmap fonts from SGI

V =		1.0
DISTNAME =	sgi-fonts-${V}-1.src
PKGNAME =	sgi-fonts-${V}
REVISION =	2

CATEGORIES =	fonts

# MIT
PERMIT_PACKAGE = Yes

SITES =		${SITE_FREEBSD}
EXTRACT_SUFX =	.rpm

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR=	${PREFIX}/share/fonts/sgi-fonts

WRKSRC =	${WRKDIR}/sgi-fonts/sgi

PKG_ARCH =	*

post-extract:
	cd ${WRKDIR} && ${TAR} xf sgi-fonts.tar.gz

do-build:
	cd ${WRKSRC}; \
	for file in *.bdf; do \
		font=`basename $$file .bdf`; \
		${X11BASE}/bin/bdftopcf -t -o $$font.pcf $$font.bdf; \
	done
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	rm -f ${WRKSRC}/fonts.alias
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-sgi-fonts

.include <bsd.port.mk>
