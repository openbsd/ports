# $OpenBSD: Makefile,v 1.7 2000/05/31 16:52:22 espie Exp $

DISTNAME=	netris-0.5
CATEGORIES=	games
FAKE=		Yes
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT= Configure

FAKE_FLAGS=DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
