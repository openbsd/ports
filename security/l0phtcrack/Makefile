# Makefile for:		l0phtcrack
# Version required:	2.52
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/04/09 17:38:02 espie Exp $

PKGNAME=	l0phtcrack-2.52

CATEGORIES=	security
NEED_VERSION=	1.191
FAKE=No

MAINTAINER=	dugsong@monkey.org

DIST_SUBDIR=	l0phtcrack
DISTFILES=	lcsrc${EXTRACT_SUFX} readsmb.c
EXTRACT_ONLY=	lcsrc${EXTRACT_SUFX}
USE_ZIP=	yes

MASTER_SITES=	http://www.l0pht.com/l0phtcrack/dist/

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	yes

post-extract:
		@cp ${FULLDISTDIR}/readsmb.c ${WRKSRC}
		@(cd ${WRKSRC} ; \
		for file in * ; do \
		   tr -d '\r' < $$file > $$file.new ; \
		   mv $$file.new $$file ; \
		done)

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/lc ${PREFIX}/sbin/l0phtcrack
		${INSTALL_PROGRAM} ${WRKSRC}/readsmb ${PREFIX}/sbin
		${INSTALL_DATA_DIR} ${PREFIX}/share/l0phtcrack
		${INSTALL_DATA} ${WRKSRC}/wfile.txt ${PREFIX}/share/l0phtcrack
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/l0phtcrack
		${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/l0phtcrack

.include <bsd.port.mk>
