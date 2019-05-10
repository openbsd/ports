# $OpenBSD: Makefile,v 1.12 2019/05/10 04:59:49 rsadowski Exp $

COMMENT =	wallpaper setting utility for X

V =		0.5.0
DISTNAME =	xwallpaper-${V}

CATEGORIES =	x11 graphics

HOMEPAGE =	https://github.com/stoeckmann/xwallpaper

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += X11 Xpm c jpeg pixman-1 png xcb xcb-image xcb-randr
WANTLIB += xcb-shm xcb-util z

MASTER_SITES =	https://github.com/stoeckmann/xwallpaper/releases/download/v${V}/

DISTFILES =	${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}
EXTRACT_SUFX =	.tar.xz

LIB_DEPENDS +=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST = 	Yes

.include <bsd.port.mk>
