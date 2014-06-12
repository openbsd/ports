# $OpenBSD: Makefile,v 1.2 2014/06/12 08:17:59 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		GTK+2 IRC Client
DISTNAME =		hexchat-2.10.0
EXTRACT_SUFX =		.tar.xz
CATEGORIES =		net x11
REVISION =		0

HOMEPAGE =		http://hexchat.github.io/
MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto dbus-1 dbus-glib-1
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m ${MODPY_WANTLIB} notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre perl pixman-1
WANTLIB += png proxy pthread pthread-stubs ssl stdc++ util xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES =		http://dl.hexchat.net/hexchat/

MODULES =		devel/gettext \
			lang/python

BUILD_DEPENDS =		devel/iso-codes

LIB_DEPENDS =		devel/libnotify \
			net/libproxy \
			x11/gtk+2 \
			x11/dbus-glib \
			${MODPY_LIB_DEPENDS}

MODPY_BUILDDEP =	No

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/iso-codes \
			x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6 \
			--enable-dbus \
			--disable-sysinfo \
			--disable-libcanberra
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

LIBTOOL_FLAGS =		--tag=disable-static

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
