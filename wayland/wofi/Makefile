COMMENT =	launcher/menu program for wlroots based wayland compositors

V =		1.5.1
DISTNAME =	wofi-${V}

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>
# GPLv3 only
PERMIT_PACKAGE = Yes

SITES =		https://hg.sr.ht/~scoopta/wofi/archive/
EXTRACT_SUFX =	.tar.gz
DISTFILES = wofi-{v}${V}${EXTRACT_SUFX}

WRKDIST = ${WRKDIR}/wofi-v${V}

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

BUILD_DEPENDS =	wayland/wayland
LIB_DEPENDS =	x11/gtk+3

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 pango-1.0 pthread wayland-client

.include <bsd.port.mk>
