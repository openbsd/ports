# $OpenBSD: Makefile,v 1.21 2012/02/21 22:19:31 sthen Exp $

COMMENT=	network head-to-head version of T*tris

DISTNAME=	netris-0.52
REVISION=	0
CATEGORIES=	games

HOMEPAGE=	http://www.netris.org/
MASTER_SITES=	ftp://ftp.netris.org/pub/netris/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses termcap

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure

USE_GROFF =	Yes
NO_REGRESS=	Yes
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}/bin

post-install:
	${INSTALL_MAN} ${FILESDIR}/netris.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
