# $OpenBSD: Makefile,v 1.26 2015/07/18 22:29:57 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		personal file-sharing service for GNOME

GNOME_PROJECT=		gnome-user-share
GNOME_VERSION=		3.14.2
REVISION=		3

CATEGORIES=		www sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz ltdl m nautilus-extension
WANTLIB += notify ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/libnotify \
			x11/gnome/nautilus

RUN_DEPENDS=		www/ap2-mod_dnssd

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-user-share

CONFIGURE_ARGS=		--with-httpd=${LOCALBASE}/sbin/httpd2 \
			--with-modules-path=${LOCALBASE}/lib/apache2

# needs gnome-bluetooth
CONFIGURE_ARGS +=	--disable-bluetooth

# XXX help files got removed but configure checks for itstool(1) anyway
BUILD_DEPENDS +=	textproc/itstool

pre-configure:
	sed -i 's,/usr/share,${TRUEPREFIX}/share,g' \
		${WRKSRC}/data/dav_user_2.*.conf

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}

.include <bsd.port.mk>
