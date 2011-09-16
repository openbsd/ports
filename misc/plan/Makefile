# $OpenBSD: Makefile,v 1.26 2011/09/16 10:31:23 espie Exp $

COMMENT=	X11/Motif schedule planner with calendar

DISTNAME=	plan-1.10.1
REVISION=	1
CATEGORIES=	misc

HOMEPAGE=	http://www.bitrot.de/plan.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm Xt c m Xm

MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/graphics/plan/

LIB_DEPENDS+=		x11/openmotif

WRKSRC=		${WRKDIST}/src
ALL_TARGET=	openbsd
MAKE_FLAGS=	PLANBASE=${PREFIX} EXAMPLES=${PREFIX}/share/examples/plan
FAKE_FLAGS=	PLANBASE=${WRKINST}${PREFIX} \
		EXAMPLES=${WRKINST}${PREFIX}/share/examples/plan
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-extract:
	@rm -f ${WRKSRC}/../misc/plan.1.orig

.include <bsd.port.mk>
