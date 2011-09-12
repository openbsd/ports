# $OpenBSD: Makefile,v 1.65 2011/09/12 12:07:26 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

# PLIST regen is needed for at least the following ports when
# the epiphany extensions directory changes:
# (i.e. ${LOCALBASE}/lib/epiphany/${M}/extensions)
# www/epiphany-extensions

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.0.4

M=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	M
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://projects.gnome.org/epiphany/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += execinfo expat ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gstapp-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-3 icudata icui18n icuuc
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs seed-gtk3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 startup-notification-1 stdc++ webkitgtk-3.0
WANTLIB += xcb xcb-atom xcb-aux xcb-event xcb-render xcb-shm xml2
WANTLIB += xslt z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas
LIB_DEPENDS=	textproc/libxslt \
		devel/libexecinfo \
		devel/libnotify>=0.7.2 \
		devel/libsoup,-gnome \
		devel/startup-notification \
		x11/gnome/seed

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIBTOOL_FLAGS=		--tag=disable-static
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES= 	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-static \
		--disable-gtk-doc \
		--disable-zeroconf \
		--with-distributor-name="OpenBSD ports" \
		--with-ca-file=/etc/ssl/cert.pem \
		--enable-seed \
		--disable-nss

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		HOME=/tmp

.include <bsd.port.mk>
