# Makefile for:		figlet
# Version required:	2.2
# Date created:		15 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:30 espie Exp $

PKGNAME=	figlet-2.2

CATEGORIES=	misc

MAINTAINER=	dugsong@monkey.org

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
