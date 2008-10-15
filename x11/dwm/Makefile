# $OpenBSD: Makefile,v 1.10 2008/10/15 18:47:54 kili Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-5.2

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/dwm/index.html

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://code.suckless.org/dl/dwm/

RUN_DEPENDS=		:dmenu->=3.9:x11/dmenu \
			::x11/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
