# $OpenBSD: Makefile,v 1.4 2000/03/23 05:15:35 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=      	swatch-2.2
CATEGORIES=	security sysutils 
NO_CDROM=	"NOFEE:	Can not sell"

MASTER_SITES=	ftp://ftp.stanford.edu/general/security-tools/swatch/ \
		ftp://ftp.cert.dfn.de/pub/tools/audit/swatch/

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	YES

MAN5=		swatch.conf.5
MAN8=		swatch.8

do-install:
		@cd ${WRKSRC}; sh ${WRKSRC}/install.sh

.include <bsd.port.mk>
