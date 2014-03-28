# $OpenBSD: Makefile,v 1.31 2014/03/28 09:56:03 ajacoutot Exp $

COMMENT=		Gtk-based GUI client for Twitter

GNOME_PROJECT=		twitux
GNOME_VERSION=		0.69
REVISION=		9
EPOCH=			0

CATEGORIES=     	net

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=twitux/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo canberra canberra-gtk dbus-1 dbus-glib-1 drm
WANTLIB += enchant expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 ltdl
WANTLIB += m notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sexy soup-2.4
WANTLIB += stdc++ vorbis vorbisfile xcb xcb-render xcb-shm xml2
WANTLIB += z

BUILD_DEPENDS=	devel/iso-codes
RUN_DEPENDS=	devel/iso-codes

LIB_DEPENDS=	devel/libsoup \
		x11/libsexy \
		x11/gnome/libgnome-keyring \
		devel/libnotify>=0.7.2 \
		audio/libcanberra,-gtk \
		textproc/enchant

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

MODGCONF2_SCHEMAS_DIR=	twitux

MODGNOME_TOOLS= 	yelp
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-dbus=yes \
		--enable-gnome-keyring=yes \
		--enable-spell=yes

MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
