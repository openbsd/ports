# OpenBSD makefile for:	libnet
# Version required:	0.10a
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/02/25 17:02:34 dugsong Exp $
#

PKGNAME=	libnet-0.10a
DISTNAME=	libnet

CATEGORIES=     net

MASTER_SITES=	http://www.infonexus.com/~daemon9/Projects/Libnet/

MAINTAINER=	dugsong@monkey.org

GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/Libnet

post-extract:
		@chmod 755 ${WRKDIR}/Libnet/src/CVS

.include <bsd.port.mk>
