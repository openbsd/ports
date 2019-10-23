# $OpenBSD: Makefile,v 1.27 2019/10/23 05:06:11 bket Exp $

COMMENT =		GTK+2 IRC Client
DISTNAME =		hexchat-2.14.2
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		net x11

HOMEPAGE =		https://hexchat.github.io/
# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 c crypto dbus-glib-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl luajit-5.1 notify pango-1.0 perl proxy ssl
WANTLIB += ${MODPY_WANTLIB}

# libproxy requires libestdc++
COMPILER = 		base-clang ports-gcc

MASTER_SITES =		https://dl.hexchat.net/hexchat/

MODULES =		devel/meson \
			lang/python \
			textproc/intltool

MODPY_BUILDDEP =	No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/iso-codes

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libnotify \
			lang/luajit \
			net/libproxy \
			x11/dbus-glib \
			x11/gtk+2 \
			${MODPY_LIB_DEPENDS}

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+3,-guic

CONFIGURE_ARGS += 	-Dwith-libcanberra=false \
			-Dwith-sysinfo=false

.include <bsd.port.mk>
