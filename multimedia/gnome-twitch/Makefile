# $OpenBSD: Makefile,v 1.9 2019/05/21 10:08:03 sthen Exp $

COMMENT =	desktop Twitch.tv client
CATEGORIES =	multimedia games x11

GH_ACCOUNT =	vinszent
GH_PROJECT =	gnome-twitch
GH_TAGNAME =	v0.4.2
REVISION =	3

HOMEPAGE =	http://gnome-twitch.vinszent.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstreamer-1.0 gtk-3 intl json-glib-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += atk-1.0 cairo cairo-gobject girepository-1.0 gmodule-2.0
WANTLIB += javascriptcoregtk-4.0 m pango-1.0 pangocairo-1.0 pthread
WANTLIB += soup-2.4 webkit2gtk-4.0

# C11
COMPILER =	base-clang ports-clang ports-gcc

MODULES =	devel/dconf \
		devel/meson

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gsettings-desktop-schemas

LIB_DEPENDS =	devel/json-glib \
		devel/libpeas \
		www/webkitgtk4

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gsettings-desktop-schemas \
		multimedia/gstreamer1/plugins-bad \
		multimedia/gstreamer1/plugins-good \
		multimedia/gstreamer1/plugins-libav \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-Dbuild-player-backends=gstreamer-cairo,gstreamer-opengl

LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>
