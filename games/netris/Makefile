# $OpenBSD: Makefile,v 1.14 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"network head-to-head version of T*tris"

DISTNAME=	netris-0.5
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT= Configure

NO_REGRESS=	Yes

FAKE_FLAGS=DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
