# Makefile for:		figlet
# Version required:	2.2
# Date created:		15 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/03/22 19:58:12 turan Exp $

PKGNAME=	figlet-2.2

CATEGORIES=	misc

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.internexus.net/pub/figlet/program/unix/ \
		ftp://ftp.plig.org/pub/figlet/program/unix/

MASTER_SITES0=	http://www.internexus.net/pub/figlet/fonts/ \
		ftp://ftp.plig.org/pub/figlet/fonts/

DISTFILES=	figlet22${EXTRACT_SUFX} \
		contributed${EXTRACT_SUFX}:0
NEED_VERSION=	1.191

WRKDIST=		${WRKDIR}/figlet22

NO_CONFIGURE=	yes

post-install:
		${INSTALL_DATA} ${WRKDIR}/contributed/*.flf \
		${WRKDIR}/contributed/*.flc ${PREFIX}/share/figlet

.include <bsd.port.mk>
