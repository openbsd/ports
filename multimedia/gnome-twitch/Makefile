# $OpenBSD: Makefile,v 1.1.1.1 2017/10/15 11:32:43 bcallah Exp $

V =		0.4.1
COMMENT =	desktop Twitch.tv client
DISTNAME =	gnome-twitch-${V}
CATEGORIES =	multimedia games x11

GH_ACCOUNT =	vinszent
GH_PROJECT =	gnome-twitch
GH_TAGNAME =	v${V}

HOMEPAGE =	http://gnome-twitch.vinszent.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstreamer-1.0 gtk-3 intl json-glib-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += soup-2.4 webkit2gtk-4.0

# C11
COMPILER =	base-clang ports-clang ports-gcc

# Need lang/python to get MODPY_ADJ_FILES.
MODULES =	devel/dconf \
		devel/meson \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	meson_post_install.py print_git_version.py

BUILD_DEPENDS =	devel/gettext-tools \
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

.include <bsd.port.mk>
