# $OpenBSD: Makefile,v 1.6 2000/04/09 17:36:31 espie Exp $

DISTNAME=	netris-0.5
CATEGORIES=	games
FAKE=No
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= Configure

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
