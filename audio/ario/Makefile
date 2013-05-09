# $OpenBSD: Makefile,v 1.3 2013/05/09 14:53:36 ajacoutot Exp $

COMMENT =	GTK2-based MPD client inspired by Rhythmbox
DISTNAME =	ario-1.5.1
CATEGORIES =	audio x11
REVISION =	1

SHARED_LIBS +=	audioscrobbler		0.0 # 0.0
SHARED_LIBS +=	filesystem		0.0 # 0.0
SHARED_LIBS +=	information		0.0 # 0.0
SHARED_LIBS +=	libnotify		0.0 # 0.0
SHARED_LIBS +=	mmkeys			0.0 # 0.0
SHARED_LIBS +=	radios			0.0 # 0.0
SHARED_LIBS +=	wikipedia		0.0 # 0.0

HOMEPAGE =	http://ario-player.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 avahi-client avahi-common avahi-glib
WANTLIB += c cairo crypto curl dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz hogweed
WANTLIB += icudata icule icuuc idn m mpdclient nettle notify p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 ssl tag
WANTLIB += tag_c tasn1 unique-1.0 xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ario-player/}

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	audio/libmpdclient \
		audio/taglib \
		devel/libnotify \
		devel/libsoup \
		devel/libunique \
		net/avahi \
		security/libgcrypt \
		security/libgpg-error

RUN_DEPENDS =	devel/desktop-file-utils \
		net/curl \
		x11/gtk+2,-guic

AUTOCONF_VERSION=	2.67
CONFIGURE_STYLE =	autoconf
USE_GMAKE =		Yes

.include <bsd.port.mk>
