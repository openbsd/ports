# $OpenBSD: Makefile,v 1.9 2013/03/30 08:55:43 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document manager for GNOME

GNOME_PROJECT=	gnome-documents
GNOME_VERSION=	3.6.2
REVISION=	1

HOMEPAGE=	https://live.gnome.org/GnomeDocuments

TRACKER_VERSION=0.16
SUBST_VARS=	TRACKER_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl
WANTLIB += cogl-pango crypto curl dbus-1 e2fs-uuid evdocument3
WANTLIB += evview3 expat ffi fontconfig freetype gailutil-3 gck-1
WANTLIB += gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 gjs glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icui18n icule icuuc
WANTLIB += idn json-glib-1.0 kvm m mozjs185 ncursesw nspr4 nss3
WANTLIB += oauth p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline rest-0.7 smime3 softokn3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl ssl3 xcb xcb-render xcb-shm xkbfile xml2
WANTLIB += z zapojit-0.0
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=	devel/gettext \
		devel/dconf \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		x11/gnome/gjs \
		x11/gnome/libzapojit \
		x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.la

.include <bsd.port.mk>
