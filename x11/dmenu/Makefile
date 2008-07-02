# $OpenBSD: Makefile,v 1.7 2008/07/02 20:44:45 merdely Exp $

COMMENT=		dynamic menu for X11
DISTNAME=		dmenu-3.7

CATEGORIES=		x11
HOMEPAGE=		http://www.suckless.org/wiki/tools/xlib

MAINTAINER=		Jim Razmus II <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://www.suckless.org/download/

FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
