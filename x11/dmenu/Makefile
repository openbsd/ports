# $OpenBSD: Makefile,v 1.5 2007/10/27 12:33:53 merdely Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-3.4

CATEGORIES=		x11
HOMEPAGE=		http://www.suckless.org/wiki/tools/xlib

MAINTAINER=		Tobias Ulmer <tobiasu@tmux.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://www.suckless.org/download/

FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
