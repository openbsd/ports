# $OpenBSD: Makefile,v 1.20 2007/09/15 21:26:02 simon Exp $

COMMENT=	MPEG layer I, II and III audio file encoder
DISTNAME=	dist10
PKGNAME=	mp3encode-1.10p1
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.sunet.se/pub/multimedia/Berkeley/mpeg2/conformance-bitstreams/audio/mpeg2/software/technical_report/

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

USE_GMAKE=	Yes
CONFIGURE_STYLE=simple

WRKDIST=	${WRKDIR}/${DISTNAME}/lsf/encoder
NO_REGRESS=	Yes

# Directories and extra files
TABLE_LIB=	${PREFIX}/lib/mp3encode
TABLE_LIB_SED=	${TABLE_LIB:S/\//\\\//g}
TABLE_FILES=	1cb0 1cb1 1cb2 1cb4 1cb5 1cb6 1th0 1th1 1th2 1th4 1th5 1th6 \
		2cb0 2cb1 2cb2 2cb4 2cb5 2cb6 2th0 2th1 2th2 2th4 2th5 2th6 \
		absthr_0 absthr_1 absthr_2 alloc_0 alloc_1 alloc_2 alloc_3 \
		alloc_4 dewindow enwindow huffcode huffdec psy_data

# fix rights (or fix wrongs ?)
post-extract:
	@cd ${WRKDIST} && chmod -R a+rX,u+w .

post-configure:
	@sed -e s,ZAP,${TABLE_LIB_SED}, ${WRKSRC}/common.h > ${WRKSRC}/common.h.sed
	@mv ${WRKSRC}/common.h.sed ${WRKSRC}/common.h

do-install:
	${INSTALL_DATA_DIR} ${TABLE_LIB}
	${INSTALL_PROGRAM} ${WRKSRC}/encode ${PREFIX}/bin/mp3encode
	cd ${WRKSRC}/tables; ${INSTALL_DATA} ${TABLE_FILES} ${TABLE_LIB}

.include <bsd.port.mk>
