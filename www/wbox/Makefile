# $OpenBSD: Makefile,v 1.3 2011/01/03 20:46:02 benoit Exp $

COMMENT=		HTTP testing tool

DISTNAME=		wbox-5
CATEGORIES=		net www

HOMEPAGE=		http://www.hping.org/wbox/

MAINTAINER=		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/wbox ${PREFIX}/bin

.include <bsd.port.mk>
