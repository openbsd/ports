# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:53 sthen Exp $

COMMENT=	X11/Motif schedule planner with calendar

DISTNAME=	plan-1.10.1
REVISION=	3
CATEGORIES=	misc

HOMEPAGE=	http://www.bitrot.de/plan.html

# GPLv2+
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm Xt c m Xm

MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/graphics/plan/

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
