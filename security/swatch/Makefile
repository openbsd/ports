# OpenBSD makefile for:		swatch
# Version required:    				2.2
# Date created:					19 Nov 97
# Whom:						ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/19 23:21:01 joey Exp $
#

DISTNAME=      	swatch-2.2
CATEGORIES=	security sysutils 
MASTER_SITES=	ftp://ftp.stanford.edu/general/security-tools/swatch/ \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

MAINTAINER=	joey@OpenBSD.ORG

NO_BUILD=	YES

MAN5=		swatch.conf.5
MAN8=		swatch.8

do-install:
		@cd ${WRKSRC}; sh ${WRKSRC}/install.sh

.include <bsd.port.mk>
