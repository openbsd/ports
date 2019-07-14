# $OpenBSD: Makefile,v 1.31 2019/07/14 02:16:50 naddy Exp $

V=		3.1.6
COMMENT=	real-time satellite tracking and orbit propagation program
DISTNAME=	sattrack-${V}
CATEGORIES=	astro

# Commercial License
PERMIT_PACKAGE=		May not distribute modified version
PERMIT_DISTFILES=	Yes

REVISION =	4
WANTLIB=	ICE SM X11 Xt c m

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}


WRKDIST=	${WRKDIR}/SatTrack-${V}
WRKSRC=		${WRKDIST}/src

pre-configure:
	${SUBST_CMD} ${WRKDIST}/run/getsts \
			${WRKDIST}/run/gettle

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/SatTrack/{data,pred,tle} \
		${PREFIX}/share/doc/SatTrack

NO_TEST=	Yes

.include <bsd.port.mk>
