# $OpenBSD: Makefile,v 1.14 2004/12/22 11:50:29 alek Exp $

COMMENT=	"X11/Motif schedule planner with calendar"

DISTNAME=	plan-1.6.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc

PERMIT_PACKAGE_CDROM=	"license requests a copy of the cd"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"license requests a copy of the cd"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xt c

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

USE_MOTIF=	any

WRKSRC=		${WRKDIST}/src
ALL_TARGET=	openbsd
MAKE_FLAGS=	PLANBASE=${PREFIX} EXAMPLES=${PREFIX}/share/examples/plan
FAKE_FLAGS=	PLANBASE=${WRKINST}${PREFIX} EXAMPLES=${WRKINST}${PREFIX}/share/examples/plan

NO_REGRESS=	Yes

.include <bsd.port.mk>
