# $OpenBSD: Makefile,v 1.11 2000/10/22 14:02:48 espie Exp $

DISTNAME=	sattrack-3.1.6
CATEGORIES=	astro
NEED_VERSION=	1.320
MASTER_SITES=   ${MASTER_SITE_LOCAL}

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=   "May not be bundled, according to copyright."
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "May not be bundled, according to copyright."
PERMIT_DISTFILES_FTP=   Yes

FAKE_FLAGS=	PREFIX=$"{WRKINST}${PREFIX}"

WRKDIST=	${WRKDIR}/SatTrack-3.1.6/src

post-patch:
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/getsts > $(WRKSRC)/../run/getsts.new
	@sed -e s,__PREFIX__,$(PREFIX), $(WRKSRC)/../run/gettle > $(WRKSRC)/../run/gettle.new
	@mv $(WRKSRC)/../run/getsts.new $(WRKSRC)/../run/getsts
	@mv $(WRKSRC)/../run/gettle.new $(WRKSRC)/../run/gettle

.include <bsd.port.mk>
