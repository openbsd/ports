# $OpenBSD: Makefile,v 1.7 2013/02/06 15:55:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document manager for GNOME

GNOME_PROJECT=	gnome-documents
GNOME_VERSION=	3.6.2
REVISION=	0

HOMEPAGE=	https://live.gnome.org/GnomeDocuments

TRACKER_VERSION=0.14
SUBST_VARS=	TRACKER_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += cairo-gobject clutter-1.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += crypto curl dbus-1 e2fs-uuid evdocument3 evview3
WANTLIB += expat ffi fontconfig freetype gailutil-3 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnome-keyring goa-1.0 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-3 idn json-glib-1.0 kvm m
WANTLIB += mozjs185 nspr4 nss3 oauth pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += ssl3 tracker-sparql-0.14 xcb xcb-render
WANTLIB += ICE SM atk-bridge-2.0 atspi gck-1 gcr-base-3 harfbuzz
WANTLIB += icudata icule icuuc p11-kit rest-0.7 xkbfile zapojit-0.0
WANTLIB += xcb-shm xml2 z icui18n
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=	devel/gettext \
		devel/dconf \
		x11/gnome

LIB_DEPENDS=	graphics/clutter/clutter-gtk \
		graphics/evince>=3.6.0 \
		x11/gnome/gjs>=1.34.0 \
		x11/gnome/libzapojit \
		x11/gnome/tracker

MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.la

.include <bsd.port.mk>
