# OpenBSD makefile for:	xmake	
# Version required:	1.01
# Date created:		1 Dec 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/01 21:40:48 joey Exp $
#

DISTNAME=	xmake-1.01
CATEGORIES=	devel
MASTER_SITES=	http://www.backplane.com/xmake/ \
		ftp://atari.saturn5.com/pub/dlowe/
EXTRACT_SUFX=	.tgz

MAINTAINER=	joey@OpenBSD.ORG

WRKSRC=		${WRKDIR}/xmake
MAN1=		xmake.1

pre-build:
	@${RM} -rf ${WRKSRC}/obj

.include <bsd.port.mk>
