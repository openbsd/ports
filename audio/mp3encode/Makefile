# $OpenBSD: Makefile,v 1.2 1999/09/06 18:13:21 brad Exp $

DISTNAME=	dist10
PKGNAME=	mp3encode-1.10
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.sunet.se/pub/multimedia/Berkeley/mpeg2/conformance-bitstreams/audio/mpeg2/software/technical_report/

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
HAS_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/${DISTNAME}/lsf/encoder
ALL_TARGET=	encode

# Directories and extra files
TABLE_LIB=	${PREFIX}/lib/mp3encode
TABLE_LIB_SED=	${TABLE_LIB:S/\//\\\//g}
TABLE_FILES=	1cb0 1cb1 1cb2 1cb4 1cb5 1cb6 1th0 1th1 1th2 1th4 1th5 1th6 \
		2cb0 2cb1 2cb2 2cb4 2cb5 2cb6 2th0 2th1 2th2 2th4 2th5 2th6 \
		absthr_0 absthr_1 absthr_2 alloc_0 alloc_1 alloc_2 alloc_3 \
		alloc_4 dewindow enwindow huffcode huffdec psy_data

post-patch:
	@${ECHO} "===>  Specifing table path"
	@${RM} -f ${WRKSRC}/common.h.sed
	@${SED} "s/ZAP/${TABLE_LIB_SED}/g" < ${WRKSRC}/common.h > ${WRKSRC}/common.h.sed
	@${RM} -f ${WRKSRC}/common.h
	@${CP} -f ${WRKSRC}/common.h.sed ${WRKSRC}/common.h

do-install:
	@${ECHO} "===>  Installing binaries"
	${INSTALL_PROGRAM} ${WRKSRC}/encode ${PREFIX}/bin/mp3encode
	@${ECHO} "===>  Installing table files"
	-${MKDIR} ${TABLE_LIB}
	@for file in ${TABLE_FILES} ; do \
		${INSTALL_DATA} ${WRKSRC}/tables/$$file ${TABLE_LIB}/ ;\
	done

.include <bsd.port.mk>
