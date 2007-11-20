# $OpenBSD: Makefile,v 1.1.1.1 2007/11/20 20:25:19 jasper Exp $

COMMENT=		HTTP testing tool

DISTNAME=		wbox-4
CATEGORIES=		net

HOMEPAGE=		http://www.hping.org/wbox/

MAINTAINER=		Laurent Fanis <laurent@humppa.nl>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

WRKDIST=		${WRKDIR}/wbox

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/wbox ${PREFIX}/bin

.include <bsd.port.mk>
