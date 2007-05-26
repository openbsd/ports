# $OpenBSD: Makefile,v 1.2 2007/05/26 16:39:45 ajacoutot Exp $

COMMENT=		"dynamic menu for X11"
DISTNAME=		dmenu-3.1

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
