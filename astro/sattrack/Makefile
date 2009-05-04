# $OpenBSD: Makefile,v 1.25 2009/05/04 10:25:39 sthen Exp $

V=		3.1.6
COMMENT=	real-time satellite tracking and orbit propagation program
DISTNAME=	sattrack-${V}
PKGNAME=	${DISTNAME}p2
CATEGORIES=	astro

# Commercial License
PERMIT_PACKAGE_CDROM=	May not be bundled, according to copyright
PERMIT_PACKAGE_FTP=	May not distribute modified version
PERMIT_DISTFILES_CDROM=	May not be bundled, according to copyright
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xt c m

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

USE_X11=	Yes

WRKDIST=	${WRKDIR}/SatTrack-${V}
WRKSRC=		${WRKDIST}/src

pre-configure:
	@perl -pi -e 's,__PREFIX__,${PREFIX},g' \
		${WRKDIST}/run/getsts \
		${WRKDIST}/run/gettle

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/SatTrack/{data,pred,tle} \
		${PREFIX}/share/doc/SatTrack

NO_REGRESS=	Yes

.include <bsd.port.mk>
