COMMENT =		GTK+2 IRC Client
V =			2.16.2
DISTNAME =		hexchat-$V
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		net x11
REVISION =		1

HOMEPAGE =		https://hexchat.github.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

# luajit
USE_NOBTCFI =		Yes

WANTLIB += X11 c canberra crypto dbus-glib-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl luajit-5.1 pango-1.0 perl ssl
WANTLIB += ${MODPY_WANTLIB}

# libproxy requires libestdc++
COMPILER =		base-clang ports-gcc

SITES =			https://github.com/hexchat/hexchat/releases/download/v$V/

MODULES =		devel/meson \
			lang/python \
			textproc/intltool

BUILD_DEPENDS =		devel/iso-codes \
			devel/py-cffi${MODPY_FLAVOR}

# work towards gtk+3 support is in
# https://github.com/hexchat/hexchat/tree/wip/gtk3
LIB_DEPENDS =		audio/libcanberra \
			devel/gettext,-runtime \
			lang/luajit \
			x11/dbus-glib \
			x11/gtk+2 \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+4,-guic

CONFIGURE_ARGS +=	-Dwith-sysinfo=false

.include <bsd.port.mk>
