# $OpenBSD: Makefile,v 1.23 2019/07/12 20:43:31 sthen Exp $

COMMENT =	GTK2-based MPD client inspired by Rhythmbox
DISTNAME =	ario-1.5.1
CATEGORIES =	audio x11
REVISION =	17

SHARED_LIBS +=	audioscrobbler		0.0 # 0.0
SHARED_LIBS +=	filesystem		0.0 # 0.0
SHARED_LIBS +=	information		0.0 # 0.0
SHARED_LIBS +=	libnotify		0.0 # 0.0
SHARED_LIBS +=	mmkeys			0.0 # 0.0
SHARED_LIBS +=	radios			0.0 # 0.0
SHARED_LIBS +=	wikipedia		0.0 # 0.0

HOMEPAGE =	http://ario-player.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += crypto curl dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz hogweed iconv idn2 intl lzma
WANTLIB += m mpdclient nettle nghttp2 notify p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += soup-2.4 sqlite3 ssl tag tag_c tasn1 unique-1.0
WANTLIB += unistring xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ario-player/}

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	audio/libmpdclient \
		audio/taglib \
		devel/libnotify \
		devel/libsoup \
		devel/libunique \
		net/avahi \
		net/curl \
		security/libgcrypt \
		security/libgpg-error

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
