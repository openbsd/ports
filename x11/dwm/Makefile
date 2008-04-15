# $OpenBSD: Makefile,v 1.7 2008/04/15 19:44:10 merdely Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-4.9

CATEGORIES=		x11

HOMEPAGE=		http://www.suckless.org/wiki/dwm/

MAINTAINER=		Jim Razmus <jim@bonetruck.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c

MASTER_SITES=		http://www.suckless.org/download/

RUN_DEPENDS=		:dmenu->=3.6:x11/dmenu \
			::x11/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
