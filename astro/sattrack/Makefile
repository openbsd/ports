# $OpenBSD: Makefile,v 1.2 1998/10/06 22:37:07 marc Exp $
#

DISTNAME=	sattrack-3.1.6
CATEGORIES=	astro

NO_CDROM=	"COPY: may not be bundled"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=   ${MASTER_SITE_LOCAL}

WRKSRC=		${WRKDIR}/SatTrack-3.1.6/src

post-install:
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>
