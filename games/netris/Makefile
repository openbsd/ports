# $OpenBSD: Makefile,v 1.12 2002/03/21 20:57:07 espie Exp $

COMMENT=	"network head-to-head version of T*tris"

DISTNAME=	netris-0.5
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT= Configure

FAKE_FLAGS=DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
