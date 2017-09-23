# $OpenBSD: Makefile,v 1.160 2017/09/23 11:41:31 sthen Exp $

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.24.4
MAJOR_V=	${GNOME_VERSION:R}
SUBST_VARS=	MAJOR_V
REVISION=	0

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm enchant
WANTLIB += epoxy $(LIBECXX) execinfo expat ffi fontconfig freetype
WANTLIB += gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc intl
WANTLIB += javascriptcoregtk-4.0 jpeg lzma m notify orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs secret-1 soup-2.4 sqlite3
WANTLIB += webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z json-glib-1.0
WANTLIB += GLESv2 gstallocators-1.0 gstbadallocators-1.0 gstgl-1.0
WANTLIB += tasn1

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libexecinfo \
		devel/libnotify \
		multimedia/gstreamer1/plugins-base \
		www/webkitgtk4 \
		x11/gnome/desktop \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		x11/gnome

COMPILER =	gcc
COMPILER_LANGS =	c

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nss \
		--with-distributor-name="OpenBSD ports"

# error: 'for' loop initial declarations are only allowed in C99 or C11 mode
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -std=c99

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

post-install:
	rm ${PREFIX}/lib/epiphany/web-extensions/*.{a,la}

.include <bsd.port.mk>
