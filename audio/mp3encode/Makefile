# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:34 espie Exp $

DISTNAME=	dist10
PKGNAME=	mp3encode-1.10
CATEGORIES=	audio
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.sunet.se/pub/multimedia/Berkeley/mpeg2/conformance-bitstreams/audio/mpeg2/software/technical_report/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_GMAKE=	yes
HAS_CONFIGURE=	yes

WRKDIST=	${WRKDIR}/${DISTNAME}/lsf/encoder

# Directories and extra files
TABLE_LIB=	${PREFIX}/lib/mp3encode
TABLE_LIB_SED=	${TABLE_LIB:S/\//\\\//g}
TABLE_FILES=	1cb0 1cb1 1cb2 1cb4 1cb5 1cb6 1th0 1th1 1th2 1th4 1th5 1th6 \
		2cb0 2cb1 2cb2 2cb4 2cb5 2cb6 2th0 2th1 2th2 2th4 2th5 2th6 \
		absthr_0 absthr_1 absthr_2 alloc_0 alloc_1 alloc_2 alloc_3 \
		alloc_4 dewindow enwindow huffcode huffdec psy_data

post-patch:
	@sed -e s,ZAP,${TABLE_LIB_SED}, ${WRKSRC}/common.h > ${WRKSRC}/common.h.sed
	@mv ${WRKSRC}/common.h.sed ${WRKSRC}/common.h

do-install:
	${INSTALL_DATA_DIR} ${TABLE_LIB}
	${INSTALL_PROGRAM} ${WRKSRC}/encode ${PREFIX}/bin/mp3encode
	cd ${WRKSRC}/tables; ${INSTALL_DATA} ${TABLE_FILES} ${TABLE_LIB}

.include <bsd.port.mk>
