# $OpenBSD: Makefile,v 1.18 2010/10/19 08:13:56 espie Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-5.8.2

CATEGORIES=		x11

HOMEPAGE=		http://dwm.suckless.org/

MAINTAINER=		Jim Razmus <jim@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://dl.suckless.org/dwm/

RUN_DEPENDS=		:dmenu->=4.1.1:x11/dmenu \
			::x11/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

USE_X11=		Yes
USE_GROFF =	Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
