# $OpenBSD: Makefile,v 1.51 2021/11/26 13:27:43 landry Exp $

COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.5.8
XFCE_GOODIE=	mousepad
SHARED_LIBS +=	mousepad	0.0 # 0.0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA=	lib lib/mousepad/plugins

LIB_DEPENDS=	textproc/gspell \
		x11/gtksourceview4
CONFIGURE_ARGS =	--enable-gspell

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += aspell enchant-2 gspell-1 jpeg gtk-3 gtksourceview-4 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += xml2 z ${COMPILER_LIBCXX}
WANTLIB += Xau Xdmcp execinfo

.include <bsd.port.mk>
