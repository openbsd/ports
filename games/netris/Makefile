# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:19 turan Exp $

DISTNAME=	netris-0.5
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
