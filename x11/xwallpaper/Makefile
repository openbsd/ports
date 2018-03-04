# $OpenBSD: Makefile,v 1.8 2018/03/04 12:29:56 rsadowski Exp $

COMMENT =	wallpaper setting utility for X

V =		0.3.0
DISTNAME =	xwallpaper-${V}
REVISION =	2

CATEGORIES =	x11 graphics

HOMEPAGE =	https://github.com/stoeckmann/xwallpaper

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += X11 Xpm c jpeg pixman-1 png xcb xcb-image
WANTLIB += xcb-randr xcb-shm xcb-util z

MASTER_SITES =	https://github.com/stoeckmann/xwallpaper/releases/download/v${V}/

LIB_DEPENDS +=	graphics/jpeg \
		graphics/png

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
