# Makefile for:		ADMsmb
# Version required:	0.2
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/05/31 17:12:15 dugsong Exp $

PKGNAME=	ADMsmb-0.2

CATEGORIES=	security

DISTNAME=	ADMsmb-v0.2
EXTRACT_SUFX=	.tgz

MASTER_SITES=	ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/

MAINTAINER=	dugsong@monkey.org

WRKSRC=		${WRKDIR}/ADM-SAMBA-CLIENT

NO_CONFIGURE=	yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADM-smb ${PREFIX}/bin/ADMsmb

.include <bsd.port.mk>
