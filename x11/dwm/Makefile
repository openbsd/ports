# $OpenBSD: Makefile,v 1.23 2012/07/09 16:33:40 zinke Exp $

COMMENT=		dynamic window manager

DISTNAME=		dwm-6.0

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

RUN_DEPENDS=		x11/dmenu>=4.4 \
			fonts/terminus-font

MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_REGRESS=		Yes

.include <bsd.port.mk>
