# $OpenBSD: Makefile,v 1.4 2009/06/06 18:41:41 landry Exp $

SHARED_ONLY =	Yes

COMMENT =	bundle of plugins for gmpc

VERSION =	0.18.0
DISTNAME =	gmpc-plugins-${VERSION}
PKGNAME =	${DISTNAME}p1

CATEGORIES =	audio

MAINTAINER =	Landry Breuil <gaston@gcu.info>

HOMEPAGE =	http://gmpc.wikia.com/wiki/Gnome_Music_Player_Client
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=musicpd/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS =	tag,tag_c::audio/taglib \
		xosd::x11/xosd \
		avahi-client,avahi-common,avahi-glib::net/avahi

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += crypto curl dbus-1 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 idn m mpd pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += sqlite3 ssl stdc++ xml2 z

MODULES =	devel/gettext
RUN_DEPENDS =	:gmpc->=${VERSION}:audio/gmpc \
		::audio/vorbis-tools

BUILD_DEPENDS =	${RUN_DEPENDS} \
		::x11/gob2
USE_LIBTOOL =	Yes
USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mserver \
		--disable-libnotify \
		--disable-wikipedia \
		--disable-lirc

.include <bsd.port.mk>
