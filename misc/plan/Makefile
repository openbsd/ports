# $OpenBSD: Makefile,v 1.12 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"X11/Motif schedule planner with calendar"

DISTNAME=	plan-1.6.1
CATEGORIES=	misc

PERMIT_PACKAGE_CDROM=	"license requests a copy of the cd"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"license requests a copy of the cd"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

USE_MOTIF=	any

WRKSRC=		${WRKDIST}/src
ALL_TARGET=	openbsd
MAKE_FLAGS=	PLANBASE=${PREFIX}
FAKE_FLAGS=	PLANBASE=${WRKINST}${PREFIX}

NO_REGRESS=	Yes

.include <bsd.port.mk>
