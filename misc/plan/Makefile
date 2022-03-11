COMMENT=	X11/Motif schedule planner with calendar

DISTNAME=	plan-1.10.1
REVISION=	4
CATEGORIES=	misc

HOMEPAGE=	https://www.bitrot.de/plan.html

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm Xt c m Xm

# ftp server seems to have a firewalling/config problem
MASTER_SITES=	ftp://ftp.bitrot.de/pub/plan/ \
		https://spacehopper.org/mirrors/
FIX_EXTRACT_PERMISSIONS=	Yes

LIB_DEPENDS+=		x11/motif

WRKSRC=		${WRKDIST}/src
ALL_TARGET=	openbsd
MAKE_FLAGS=	PLANBASE=${PREFIX} EXAMPLES=${PREFIX}/share/examples/plan
FAKE_FLAGS=	PLANBASE=${WRKINST}${PREFIX} \
		EXAMPLES=${WRKINST}${PREFIX}/share/examples/plan
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

post-extract:
	rm ${WRKSRC}/../misc/plan.1.orig

.include <bsd.port.mk>
