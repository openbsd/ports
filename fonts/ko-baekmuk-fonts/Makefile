# $OpenBSD: Makefile,v 1.2 2012/10/29 15:19:03 espie Exp $

COMMENT= 	extra Korean fonts

V=		2.0
DISTNAME=	baekmuk-${V}
PKGNAME=	ko-baekmuk-fonts-${V}
REVISION=	1
CATEGORIES=	fonts korean x11

MASTER_SITES=	ftp://ftp.kr.freebsd.org/pub/FreeBSD/distfiles/ \
		ftp://ftp.mizi.com/pub/baekmuk/
HOMEPAGE=	http://www.mizi.co.kr

MAINTAINER=	Jung <moorang@gmail.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# bdftopcf, mkfontdir

FONTDIR=${PREFIX}/lib/X11/fonts/korean
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

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/fonts.alias ${FONTDIR}/fonts.alias-baekmuk

.include <bsd.port.mk>
