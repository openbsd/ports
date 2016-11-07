# $OpenBSD: Makefile,v 1.14 2016/11/07 10:51:36 sthen Exp $

COMMENT =	GTK2-based MPD client inspired by Rhythmbox
DISTNAME =	ario-1.5.1
CATEGORIES =	audio x11
REVISION =	11

SHARED_LIBS +=	audioscrobbler		0.0 # 0.0
SHARED_LIBS +=	filesystem		0.0 # 0.0
SHARED_LIBS +=	information		0.0 # 0.0
SHARED_LIBS +=	libnotify		0.0 # 0.0
SHARED_LIBS +=	mmkeys			0.0 # 0.0
SHARED_LIBS +=	radios			0.0 # 0.0
SHARED_LIBS +=	wikipedia		0.0 # 0.0

HOMEPAGE =	http://ario-player.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 avahi-client avahi-common avahi-glib c cairo
WANTLIB += crypto curl dbus-1 dbus-glib-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz hogweed idn lzma m mpdclient
WANTLIB += nettle nghttp2 notify p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs soup-2.4
WANTLIB += sqlite3 ssl tag tag_c tasn1 unique-1.0 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ario-player/}

MODULES =	devel/gettext \
		textproc/intltool

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
