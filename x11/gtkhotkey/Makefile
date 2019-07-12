# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:13 sthen Exp $

COMMENT =	platform independent hotkey handling for Gtk+ applications

DISTNAME =	gtkhotkey-0.2.1
REVISION=	10
SHARED_LIBS =	gtkhotkey 0.0 #1.0
CATEGORIES =	x11

HOMEPAGE =	http://launchpad.net/gtkhotkey

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES =	https://launchpad.net/gtkhotkey/0.2/0.2.1/+download/

MODULES =	textproc/intltool
CONFIGURE_STYLE =gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+2

.include <bsd.port.mk>
