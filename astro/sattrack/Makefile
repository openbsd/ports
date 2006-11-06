# $OpenBSD: Makefile,v 1.21 2006/11/06 19:40:32 espie Exp $

COMMENT=	"real-time satellite tracking and orbit propagation program"
DISTNAME=	sattrack-3.1.6
PKGNAME=	${DISTNAME}p0
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

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/SatTrack/{data,pred,tle} \
		${PREFIX}/share/doc/SatTrack

NO_REGRESS=	Yes

.include <bsd.port.mk>
