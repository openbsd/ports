# $OpenBSD: Makefile,v 1.15 2002/10/24 16:21:35 naddy Exp $

COMMENT=	"real-time satellite tracking and orbit propagation program"
DISTNAME=	sattrack-3.1.6
CATEGORIES=	astro
MASTER_SITES=   ${MASTER_SITE_LOCAL}

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=   "May not be bundled, according to copyright."
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "May not be bundled, according to copyright."
PERMIT_DISTFILES_FTP=   Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

WRKDIST=	${WRKDIR}/SatTrack-3.1.6/src

post-patch:
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/getsts > $(WRKSRC)/../run/getsts.new
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/gettle > $(WRKSRC)/../run/gettle.new
	@mv $(WRKSRC)/../run/getsts.new $(WRKSRC)/../run/getsts
	@mv $(WRKSRC)/../run/gettle.new $(WRKSRC)/../run/gettle

NO_REGRESS=	Yes

.include <bsd.port.mk>
