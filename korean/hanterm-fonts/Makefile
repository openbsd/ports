# $OpenBSD: Makefile,v 1.3 2002/10/27 01:02:17 naddy Exp $

COMMENT=	"extra Korean fonts"

PKGNAME=	hanterm-fonts-3.1
DISTNAME=	hanterm-font-3.1
CATEGORIES=	korean x11

MASTER_SITES=	http://hanterm.org/download/font/
HOMEPAGE=	http://hanterm.org/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

FONTDIR=	${PREFIX}/lib/X11/fonts/korean
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

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-hanterm

.include <bsd.port.mk>
