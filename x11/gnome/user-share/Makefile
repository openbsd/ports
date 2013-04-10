# $OpenBSD: Makefile,v 1.3 2013/04/10 09:40:02 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		personal file-sharing service for GNOME

GNOME_PROJECT=		gnome-user-share
GNOME_VERSION=		3.8.0
REVISION=		1

CATEGORIES=		www sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 dbus-1
WANTLIB += dbus-glib-1 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icule icuuc ltdl
WANTLIB += m nautilus-extension notify ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/nautilus \
			audio/libcanberra,-gtk3

RUN_DEPENDS=		www/ap2-mod_dnssd

MODGNOME_TOOLS=		yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-user-share

CONFIGURE_ARGS=		--disable-static \
			--with-httpd=${LOCALBASE}/sbin/httpd2 \
			--with-modules-path=${LOCALBASE}/lib/apache2

### https://bugzilla.gnome.org/show_bug.cgi?id=697537
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.13
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i
###

	perl -pi -e 's,/usr/share,${TRUEPREFIX}/share,g' \
		${WRKSRC}/data/dav_user_2.*.conf

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.la

.include <bsd.port.mk>
