# OpenBSD makefile for:		swatch
# Version required:    				2.2
# Date created:					19 Nov 97
# Whom:						ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/04/12 21:41:05 marc Exp $
#

DISTNAME=      	swatch-2.2
CATEGORIES=	security sysutils 
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.stanford.edu/general/security-tools/swatch/ \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

MAINTAINER=	joey@OpenBSD.ORG

NO_BUILD=	YES

MAN5=		swatch.conf.5
MAN8=		swatch.8

do-install:
		@cd ${WRKSRC}; sh ${WRKSRC}/install.sh

.include <bsd.port.mk>
