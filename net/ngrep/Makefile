# $OpenBSD: Makefile,v 1.12 2001/05/06 05:00:12 lebel Exp $

COMMENT=	"network grep"

DISTNAME=	ngrep-1.38
CATEGORIES=     net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.packetfactory.net/Projects/ngrep/

HOMEPAGE=	http://www.packetfactory.net/Projects/ngrep/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=  yes
CONFIGURE_STYLE= gnu dest

WRKDIST=	${WRKDIR}/ngrep

ALL_TARGET=	ngrep

.include <bsd.port.mk>
