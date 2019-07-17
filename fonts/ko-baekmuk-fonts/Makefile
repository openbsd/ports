# $OpenBSD: Makefile,v 1.12 2019/07/17 14:49:22 danj Exp $

PKG_ARCH=	*

COMMENT=	extra Korean fonts

V=		2.0
DISTNAME=	baekmuk-${V}
PKGNAME=	ko-baekmuk-fonts-${V}
REVISION=	6
CATEGORIES=	fonts korean x11

MASTER_SITES=	${MASTER_SITE_FREEBSD} \
		ftp://ftp.mizi.com/pub/baekmuk/
HOMEPAGE=	http://www.mizi.co.kr

PERMIT_PACKAGE=	Yes

# bdftopcf, mkfontdir

FONTDIR=${PREFIX}/share/fonts/korean
WRKDIST=${WRKDIR}
USE_X11 =	Yes

do-build:
	cd ${WRKDIR}; \
	for file in *.bdf; do \
	   font=`basename $$file .bdf`; \
	   ${X11BASE}/bin/bdftopcf -t $$file | gzip > $$font.pcf.gz; \
	done
	${X11BASE}/bin/mkfontdir ${WRKDIR}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/fonts.alias ${FONTDIR}/fonts.alias-baekmuk

.include <bsd.port.mk>
