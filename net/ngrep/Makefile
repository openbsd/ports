# $OpenBSD: Makefile,v 1.19 2003/09/25 06:25:13 jolan Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.40.1
CATEGORIES=     net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}

HOMEPAGE=	http://ngrep.sourceforge.net/

# Restrictive
PERMIT_PACKAGE_CDROM=	"Restrictions on packages"
PERMIT_PACKAGE_FTP=	"Restrictions on packages"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/ngrep

CONFIGURE_STYLE=gnu dest

ALL_TARGET=	ngrep

.include <bsd.port.mk>
