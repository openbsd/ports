# $OpenBSD: Makefile,v 1.16 2002/10/28 01:38:45 naddy Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.40
CATEGORIES=     net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}

HOMEPAGE=	http://ngrep.sourceforge.net/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

WRKDIST=	${WRKDIR}/ngrep

ALL_TARGET=	ngrep

NO_REGRESS=	Yes

.include <bsd.port.mk>
