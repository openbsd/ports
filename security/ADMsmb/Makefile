# Makefile for:		ADMsmb
# Version required:	0.2
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:35 espie Exp $

PKGNAME=	ADMsmb-0.2

CATEGORIES=	security

DISTNAME=	ADMsmb-v0.2
EXTRACT_SUFX=	.tgz

MASTER_SITES=	ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

WRKDIST=	${WRKDIR}/ADM-SAMBA-CLIENT

NO_CONFIGURE=	yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADM-smb ${PREFIX}/bin/ADMsmb

.include <bsd.port.mk>
