# $OpenBSD: Makefile,v 1.3 1999/04/06 19:44:59 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=      	swatch-2.2
CATEGORIES=	security sysutils 
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.stanford.edu/general/security-tools/swatch/ \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

MAINTAINER=	ports@OpenBSD.ORG

NO_BUILD=	YES

MAN5=		swatch.conf.5
MAN8=		swatch.8

do-install:
		@cd ${WRKSRC}; sh ${WRKSRC}/install.sh

.include <bsd.port.mk>
