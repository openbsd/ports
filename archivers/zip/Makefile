# New ports collection makefile for:    zip (without encryption)
# http://infozip.cdrom.com/pub/infozip/
#
# Version required:     2.2
# Date created:         22 Jun 1998
# Whom:                 form
#
# $OpenBSD: Makefile,v 1.5 1998/10/20 08:39:43 form Exp $
# FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp
#

DISTNAME=       zip22
PKGNAME=        zip-2.2
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.cdrom.com/pub/infozip/src/

MAINTAINER=	form@OpenBSD.ORG

WRKSRC=         ${WRKDIR}/zip-2.2
MAKEFILE=       unix/Makefile
MAKE_FLAGS=     LOCAL_ZIP="${CFLAGS}" -f
ALL_TARGET=     generic
MAN1=           zip.1

do-install:
	cd ${WRKSRC} && \
	    ${INSTALL_PROGRAM} zip zipnote zipsplit zipcloak ${PREFIX}/bin
	cd ${WRKSRC}/man && \
	    ${INSTALL_MAN} ${MAN1} ${PREFIX}/man/man1

.include <bsd.port.mk>
