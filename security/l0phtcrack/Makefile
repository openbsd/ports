# Makefile for:		l0phtcrack
# Version required:	2.52
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/04/30 10:08:03 kevlo Exp $

PKGNAME=	l0phtcrack-2.52

CATEGORIES=	security
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	l0phtcrack
DISTFILES=	lcsrc${EXTRACT_SUFX} readsmb.c
EXTRACT_ONLY=	lcsrc${EXTRACT_SUFX}
USE_ZIP=	Yes

MASTER_SITES=	http://www.l0pht.com/l0phtcrack/dist/

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	Yes
FAKE=		Yes

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
