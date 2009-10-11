# $OpenBSD: Makefile,v 1.15 2009/10/11 13:30:38 jim Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-5.7.2

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/dwm/index.html

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://dl.suckless.org/dwm/

RUN_DEPENDS=		:dmenu->=3.9:x11/dmenu \
			::x11/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
