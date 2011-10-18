# $OpenBSD: Makefile,v 1.73 2011/10/18 14:26:19 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

# PLIST regen is needed for at least the following ports when
# the epiphany extensions directory changes:
# (i.e. ${LOCALBASE}/lib/epiphany/${M}/extensions)
# www/epiphany-extensions

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.2.1

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
WANTLIB += c cairo cairo-gobject dbus-1 drm enchant execinfo expat
WANTLIB += ffi fontconfig freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 icudata icui18n icuuc javascriptcoregtk-3.0 jpeg
WANTLIB += kvm m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs seed-gtk3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas
LIB_DEPENDS=	textproc/libxslt \
		devel/libexecinfo \
		devel/libnotify>=0.7.2 \
		devel/libsoup,-gnome \
		devel/startup-notification \
		x11/gnome/seed>=3.2.0p0

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIBTOOL_FLAGS=		--tag=disable-static
MODGNOME_DESKTOP_FILE=		Yes
MODGNOME_TOOLS= goi yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-zeroconf \
		--with-distributor-name="OpenBSD ports" \
		--with-ca-file=/etc/ssl/cert.pem \
		--enable-seed \
		--disable-nss

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
CONFIGURE_ENV=		HOME=/tmp

.include <bsd.port.mk>
