# $OpenBSD: Makefile,v 1.7 2000/02/11 00:37:16 espie Exp $

DISTNAME=	sattrack-3.1.6
CATEGORIES=	astro
MASTER_SITES=   ${MASTER_SITE_LOCAL}
NEED_VERSION=	1.191

NO_CDROM=	"COPY: may not be bundled"

MAINTAINER=	angelos@openbsd.org

WRKDIST=		${WRKDIR}/SatTrack-3.1.6/src

post-patch:
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/getsts > $(WRKSRC)/../run/getsts.new
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/gettle > $(WRKSRC)/../run/gettle.new
	@mv $(WRKSRC)/../run/getsts.new $(WRKSRC)/../run/getsts
	@mv $(WRKSRC)/../run/gettle.new $(WRKSRC)/../run/gettle

.include <bsd.port.mk>
