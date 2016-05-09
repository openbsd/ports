# $OpenBSD: Makefile,v 1.12 2016/05/09 22:57:57 jca Exp $

COMMENT =		GTK+2 IRC Client
DISTNAME =		hexchat-2.12.1
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		net x11

HOMEPAGE =		http://hexchat.github.io/
MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl ${MODLUA_WANTLIB} m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1
WANTLIB += png proxy pthread pthread-stubs ${MODPY_WANTLIB} ssl stdc++ util
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =		http://dl.hexchat.net/hexchat/

MODULES =		textproc/intltool \
			lang/lua \
			lang/python

MODLUA_VERSION =	5.3

BUILD_DEPENDS =		devel/iso-codes

LIB_DEPENDS =		devel/gettext \
			devel/libnotify \
			net/libproxy \
			x11/gtk+2 \
			x11/dbus-glib \
			${MODPY_LIB_DEPENDS} \
			${MODLUA_LIB_DEPENDS}

MODPY_BUILDDEP =	No

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-ipv6 \
			--enable-dbus \
			--disable-sysinfo \
			--disable-libcanberra
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib \
			LUA=${MODLUA_FLAVOR}

LIBTOOL_FLAGS =		--tag=disable-static

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
