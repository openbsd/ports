# $OpenBSD: Makefile,v 1.1.1.1 2008/05/31 20:51:28 steven Exp $

COMMENT=	terminal multiplexer

DISTNAME=	tmux-0.2
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

.include <bsd.port.mk>
