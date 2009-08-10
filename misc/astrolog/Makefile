# $OpenBSD: Makefile,v 1.25 2009/08/10 06:33:02 kili Exp $

COMMENT=	astrology program for X11 and alpha-numeric terminals

V=		5.40
DISTNAME=	ast54unx
PKGNAME=	astrolog-${V}p0
CATEGORIES=	misc

HOMEPAGE=	http://www.astrolog.org/astrolog.htm

MASTER_SITES=	http://www.astrolog.org/ftp/ephem/ \
		http://www.astrolog.org/ftp/ \
		ftp://ftp.kiarchive.ru/pub/unix/magick/astrology/astrolog/

EXTRACT_ONLY=	${DISTNAME}.shr
EPHEM=		LRZ5_24 CHI_24 CPJV_24
DISTFILES=	${EXTRACT_ONLY} ${EPHEM}

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c m pthread-stubs xcb

EXTRACT_CASES=	*.shr) ${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;

USE_X11=	Yes
DIST_SUBDIR=	astrolog
ALL_TARGET=	astrolog
WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

_V=		${V:S/.//}
SUBST_VARS=	_V

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
		${INSTALL_DATA} Helpfile.${_V} ${PREFIX}/share/doc/astrolog
	cd ${WRKSRC} && \
		${INSTALL_DATA} Update.${_V} ${PREFIX}/share/doc/astrolog
	cd ${WRKSRC} && \
		${INSTALL_DATA} README.${_V} ${PREFIX}/share/doc/astrolog

.include <bsd.port.mk>
