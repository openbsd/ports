# $OpenBSD: Makefile,v 1.5 2007/10/27 12:41:48 merdely Exp $

COMMENT=		dynamic window manager

V=			4.6
DISTNAME=		dwm-$V

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

RUN_DEPENDS=		::x11/dmenu \
			::x11/terminus-font

CFLAGS+=		-I. -I${X11BASE}/include -DVERSION=\\\"$V\\\"
LDFLAGS+=		-L${X11BASE}/lib -lX11
MAKE_FLAGS=		CC=${CC} CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		MANPREFIX=${PREFIX}/man \
			PREFIX=${PREFIX}

USE_X11=		Yes

NO_REGRESS=		Yes

pre-patch:
	@cp ${WRKSRC}/config.def.h ${WRKSRC}/config.h

.include <bsd.port.mk>
