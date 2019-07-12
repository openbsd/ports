# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:12 sthen Exp $

COMMENT=	extra Korean fonts

PKGNAME=	ko-hanterm-fonts-3.1
DISTNAME=	hanterm-font-3.1
REVISION=	1
CATEGORIES=	fonts korean x11
USE_X11 =	Yes

MASTER_SITES=	http://download.kldp.net/hanterm/hanterm-font/3.1/ \
		http://hanterm.org/download/font/
HOMEPAGE=	http://hanterm.org/

PERMIT_PACKAGE=	Yes

# bdftopcf, mkfontdir

FONTDIR=	${PREFIX}/share/fonts/korean
WRKDIST=	${WRKDIR}/hanterm-font

do-build:
	cd ${WRKSRC}; \
	for file in 10-6-6/*.bdf 8-4-4/*.bdf; do \
	   font=`basename $$file .bdf`; \
	   ${X11BASE}/bin/bdftopcf -t $$file | gzip > $$font.pcf.gz; \
	done
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-hanterm

.include <bsd.port.mk>
