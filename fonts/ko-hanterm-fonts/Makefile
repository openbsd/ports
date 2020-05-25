# $OpenBSD: Makefile,v 1.7 2020/05/25 04:34:16 bentley Exp $

COMMENT=	extra Korean fonts

V =		3.1
PKGNAME =	ko-hanterm-fonts-$V
DISTNAME =	495-hanterm-font-$V
REVISION=	3
CATEGORIES=	fonts korean x11
USE_X11 =	Yes

MASTER_SITES =	https://kldp.net/hanterm/release/
HOMEPAGE =	https://kldp.net/hanterm/

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

PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-hanterm

.include <bsd.port.mk>
