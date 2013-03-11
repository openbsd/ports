# $OpenBSD: Makefile,v 1.22 2013/03/11 11:07:40 espie Exp $

COMMENT=	network head-to-head version of T*tris

DISTNAME=	netris-0.52
REVISION=	0
CATEGORIES=	games

HOMEPAGE=	http://www.netris.org/
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses termcap

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure

USE_GROFF =	Yes
NO_TEST=	Yes
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
