# $OpenBSD: Makefile,v 1.18 2003/05/12 08:23:47 jolan Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.40.1
CATEGORIES=     net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ngrep/}

HOMEPAGE=	http://ngrep.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Restrictions on packages"
PERMIT_PACKAGE_FTP=	"Restrictions on packages"
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/ngrep

CONFIGURE_STYLE=gnu dest

ALL_TARGET=	ngrep

.include <bsd.port.mk>
