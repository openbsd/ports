# $OpenBSD: Makefile,v 1.6 2000/10/22 14:03:31 espie Exp $
#

DISTNAME=	plan-1.6.1
CATEGORIES=	misc

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	"license requests a copy of the cd"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"license requests a copy of the cd"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

USE_MOTIF=	Yes

WRKSRC=	${WRKDIST}/src
ALL_TARGET=openbsd
MAKE_FLAGS=PLANBASE=${PREFIX}
FAKE_FLAGS=PLANBASE=${WRKINST}${PREFIX}

.include <bsd.port.mk>
