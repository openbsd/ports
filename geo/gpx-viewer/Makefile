COMMENT =	gpx file viewer

GH_ACCOUNT =	DaveDavenport
GH_PROJECT =	gpx-viewer
GH_TAGNAME =	0.5.0

CATEGORIES =	geo x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 gdk-3 gdl-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += xml2

MODULES =	textproc/intltool \
		devel/meson
LIB_DEPENDS =	geo/libchamplain>=0.12.0 \
		x11/gnome/gdl
BUILD_DEPENDS +=lang/vala
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

.include <bsd.port.mk>
