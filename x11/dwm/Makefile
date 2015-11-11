# $OpenBSD: Makefile,v 1.27 2015/11/11 09:27:13 jung Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-6.1

CATEGORIES=		x11

HOMEPAGE=		http://dwm.suckless.org/

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xinerama c Xft fontconfig

MASTER_SITES=		http://dl.suckless.org/dwm/

RUN_DEPENDS=		x11/dmenu>=4.6 \
			fonts/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
