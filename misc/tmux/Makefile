# $OpenBSD: Makefile,v 1.4 2008/11/23 20:40:54 naddy Exp $

COMMENT=	terminal multiplexer

DISTNAME=	tmux-0.5
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

.include <bsd.port.mk>
