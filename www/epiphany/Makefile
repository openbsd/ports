# $OpenBSD: Makefile,v 1.119 2014/10/15 21:22:39 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.12.1
REVISION=	0
MAJOR_V=	${GNOME_VERSION:R}

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 enchant execinfo
WANTLIB += expat ffi fontconfig freetype gbm gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu icudata icui18n
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg m notify orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += startup-notification-1 stdc++ webkit2gtk-3.0 webp wnck-3
WANTLIB += xcb xcb-render xcb-shm xcb-util xml2 xslt z

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libexecinfo \
		devel/libnotify \
		devel/libwnck3 \
		devel/startup-notification \
		net/avahi \
		textproc/libxslt \
		www/webkit,gtk3 \
		x11/gnome/desktop \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nss \
		--with-distributor-name="OpenBSD ports"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

SUBST_VARS+=		MAJOR_V

post-install:
	rm ${PREFIX}/lib/epiphany/${MAJOR_V}/web-extensions/*.{a,la}

.include <bsd.port.mk>
