# Makefile for:		ADMsmb
# Version required:	0.2
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/06/09 21:04:13 espie Exp $

PKGNAME=	ADMsmb-0.2

CATEGORIES=	security
NEED_VERSION=	1.191

DISTNAME=	ADMsmb-v0.2
EXTRACT_SUFX=	.tgz

MASTER_SITES=	ftp://ADM.isp.at/ADM/ \
		http://ADM.isp.at/ADM/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/ADM-SAMBA-CLIENT

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/ADM-smb ${PREFIX}/bin/ADMsmb

.include <bsd.port.mk>
