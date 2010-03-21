# $OpenBSD: Makefile,v 1.22 2010/03/21 10:52:21 jasper Exp $

COMMENT=	X11/Motif schedule planner with calendar

DISTNAME=	plan-1.10.1
CATEGORIES=	misc

HOMEPAGE=	http://www.bitrot.de/plan.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm Xt c m

MASTER_SITES=	ftp://ftp.fu-berlin.de/unix/graphics/plan/

USE_X11=	Yes
USE_MOTIF=	any

WRKSRC=		${WRKDIST}/src
ALL_TARGET=	openbsd
MAKE_FLAGS=	PLANBASE=${PREFIX} EXAMPLES=${PREFIX}/share/examples/plan
FAKE_FLAGS=	PLANBASE=${WRKINST}${PREFIX} \
		EXAMPLES=${WRKINST}${PREFIX}/share/examples/plan

NO_REGRESS=	Yes

post-extract:
	@rm -f ${WRKSRC}/../misc/plan.1.orig

.include <bsd.port.mk>
