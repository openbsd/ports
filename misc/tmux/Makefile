# $OpenBSD: Makefile,v 1.8 2009/06/02 07:48:40 nicm Exp $

COMES_WITH=	4.6

COMMENT=	terminal multiplexer

DISTNAME=	tmux-0.8
CATEGORIES=	misc

HOMEPAGE=	http://www.sourceforge.net/projects/tmux/
MAINTAINER=	Nicholas Marriott <nicm@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses util

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tmux/}

FAKE_FLAGS=	PREFIX=${PREFIX}
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tmux
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/tmux
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmux
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/tmux
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/tmux
	${INSTALL_DATA} ${WRKSRC}/NOTES ${PREFIX}/share/doc/tmux

.include <bsd.port.mk>
