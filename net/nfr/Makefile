# OpenBSD makefile for:	nfr
# Version required:	2.0.3-research
# Date created:		1998-Jul-4
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.4 1999/03/06 22:51:40 dugsong Exp $

DISTNAME=		nfr-2.0.3-research-src
PKGNAME=		nfr-2.0.3
CATEGORIES=     	net

MAINTAINER=		dugsong@openbsd.org

NO_CDROM=		"LIC: redistribution not allowed"
MIRROR_DISTFILE=	no

MASTER_SITES=		see_do-fetch_target
EXTRACT_SUFX=		.tar.Z

IS_INTERACTIVE=		yes

WRKSRC=			${WRKDIR}/nfr-2.0.3-research/nfr

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	 ${ECHO} "";\
	 ${ECHO} "  The source to this port may not be automatically fetched";\
	 ${ECHO} "  due to licensing restrictions. You must fetch the source";\
	 ${ECHO} "  manually after agreeing to the license terms at";\
	 ${ECHO} "";\
	 ${ECHO} "           http://www.nfr.net/download/";\
	 ${ECHO} "";\
	 ${ECHO} "  Once ${DISTFILES} has been downloaded,";\
	 ${ECHO} "  move it to ${DISTDIR} and restart this build.";\
	 ${ECHO} "";\
	 exit 1;\
	fi

pre-install:
	mkdir -p ${PREFIX}/nfr/bin
	@${CP} ${FILESDIR}/createuser ${PREFIX}/nfr/bin

post-install:
	sh ${PKGDIR}/INSTALL nfr POST-INSTALL

pre-deinstall:
	sh ${PKGDIR}/DEINSTALL

.include <bsd.port.mk>
