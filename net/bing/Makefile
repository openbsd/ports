# OpenBSD makefile for:	bing
# Version required:	1.0.4
# Date created:		21 Nov 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/22 23:54:03 joey Exp $
#

DISTNAME=	bing-1.0.4
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.ibp.fr/pub/networking/

MAINTAINER=	joey@OpenBSD.ORG

MAN8= 		bing.8

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/bing
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/bing
.endif

.include <bsd.port.mk>
