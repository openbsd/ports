# $OpenBSD: Makefile,v 1.24 2013/03/11 11:46:09 espie Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-6.0

CATEGORIES=		x11

HOMEPAGE=		http://dwm.suckless.org/

MAINTAINER=		Jim Razmus <jim@openbsd.org>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xinerama c

MASTER_SITES=		http://dl.suckless.org/dwm/

RUN_DEPENDS=		x11/dmenu>=4.4 \
			fonts/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

.include <bsd.port.mk>
