# $OpenBSD: Makefile,v 1.1.1.1 2017/03/10 16:32:29 fcambus Exp $

COMMENT =	bitmap fonts from SGI

DISTNAME =	sgi-fonts
PKGNAME =	${DISTNAME}-1.0

CATEGORIES =	fonts

HOMEPAGE =	http://oss.sgi.com/projects/sgi_propack/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	https://mirrors.statdns.com/

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR=	${PREFIX}/share/fonts/sgi-fonts

WRKSRC =	${WRKDIST}/sgi

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
