# Makefile for:		l0phtcrack
# Version required:	2.52
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/05 18:19:56 dugsong Exp $

PKGNAME=	l0phtcrack-2.52

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

DIST_SUBDIR=	l0phtcrack
DISTFILES=	lcsrc${EXTRACT_SUFX} readsmb.c
EXTRACT_ONLY=	lcsrc${EXTRACT_SUFX}
USE_ZIP=	yes

MASTER_SITES=	http://www.l0pht.com/l0phtcrack/dist/

NO_WRKSUBDIR=	yes

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
