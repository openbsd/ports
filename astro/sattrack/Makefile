# $OpenBSD: Makefile,v 1.20 2006/02/18 19:06:33 steven Exp $

COMMENT=	"real-time satellite tracking and orbit propagation program"
DISTNAME=	sattrack-3.1.6
CATEGORIES=	astro

PERMIT_PACKAGE_CDROM=   "May not be bundled, according to copyright."
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "May not be bundled, according to copyright."
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		ICE SM X11 Xt c m

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

USE_X11=	Yes

WRKDIST=	${WRKDIR}/SatTrack-3.1.6/src

pre-configure:
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/getsts > $(WRKSRC)/../run/getsts.new
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/gettle > $(WRKSRC)/../run/gettle.new
	@mv $(WRKSRC)/../run/getsts.new $(WRKSRC)/../run/getsts
	@mv $(WRKSRC)/../run/gettle.new $(WRKSRC)/../run/gettle

NO_REGRESS=	Yes

.include <bsd.port.mk>
