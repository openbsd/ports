# $OpenBSD: Makefile,v 1.30 2015/05/25 07:54:27 jasper Exp $

COMMENT=	X11/Motif schedule planner with calendar

DISTNAME=	plan-1.10.1
REVISION=	2
CATEGORIES=	misc

HOMEPAGE=	http://www.bitrot.de/plan.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm Xt c m Xm

MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/graphics/plan/

LIB_DEPENDS+=		x11/openmotif

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
