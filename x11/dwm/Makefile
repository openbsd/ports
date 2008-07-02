# $OpenBSD: Makefile,v 1.9 2008/07/02 20:46:47 merdely Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-5.0.1

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/wiki/dwm/

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://www.suckless.org/download/

RUN_DEPENDS=		:dmenu->=3.7:x11/dmenu \
			::x11/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
