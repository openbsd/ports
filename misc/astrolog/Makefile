# $OpenBSD: Makefile,v 1.13 2001/01/05 16:35:59 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=       ast53unx
PKGNAME=        astrolog-5.30
CATEGORIES=     misc
NEED_VERSION=	1.336

MASTER_SITES=   http://www.astrolog.org/ftp/ephem/ \
		http://www.astrolog.org/ftp/ \
		ftp://ftp.kiarchive.ru/pub/unix/magick/astrology/astrolog/
EXTRACT_ONLY=   ${DISTNAME}.shr
EPHEM=          LRZ5_24 CHI_24 CPJV_24
DISTFILES=      ${EXTRACT_ONLY} ${EPHEM}

MAINTAINER=     ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CASES=*.shr) /bin/sh ${FULLDISTDIR}/$$archive;;

DIST_SUBDIR=    astrolog
ALL_TARGET=     astrolog
WRKDIST=	${WRKDIR}

do-install:
	-@${INSTALL_DATA_DIR} ${PREFIX}/lib/astrolog
	cd ${FULLDISTDIR} && \
		${INSTALL_DATA} ${EPHEM} ${PREFIX}/lib/astrolog
	cd ${WRKSRC} && \
		if [ -f ${PREFIX}/lib/astrolog/astrolog.dat ] ; then \
			${INSTALL_DATA} astrolog.dat ${PREFIX}/lib/astrolog/astrolog.dat-dist; \
		else \
			${INSTALL_DATA} astrolog.dat ${PREFIX}/lib/astrolog; \
		fi
	cd ${WRKSRC} && ${INSTALL_PROGRAM} astrolog ${PREFIX}/bin
	-@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/astrolog
	cd ${WRKSRC} && \
		${INSTALL_DATA} Helpfile.530 ${PREFIX}/share/doc/astrolog
	cd ${WRKSRC} && \
		${INSTALL_DATA} Update.530 ${PREFIX}/share/doc/astrolog
	cd ${WRKSRC} && \
		${INSTALL_DATA} README.530 ${PREFIX}/share/doc/astrolog
	@echo
	@echo "See the file ${PREFIX}/share/doc/astrolog/Helpfile.530 for help"
	@echo "and tune ${PREFIX}/lib/astrolog/astrolog.dat"

.include <bsd.port.mk>
