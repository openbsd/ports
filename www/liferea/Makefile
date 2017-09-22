# $OpenBSD: Makefile,v 1.95 2017/09/22 19:56:39 sthen Exp $

BROKEN-i386=		hangs during build while running g-ir-scanner

COMMENT=		simple GTK desktop news aggregator

GH_ACCOUNT=		lwindolf
GH_PROJECT=		liferea
GH_TAGNAME=		v1.12-rc3
PKGNAME=		liferea-1.12rc3

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 drm enchant epoxy expat
WANTLIB += ffi fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbadallocators-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc intl javascriptcoregtk-4.0 jpeg
WANTLIB += json-glib-1.0 lzma m notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread-stubs secret-1 soup-2.4 sqlite3 tasn1 webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/json-glib \
			devel/libpeas \
			www/webkitgtk4

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# lib/liferea/plugins/{gnome-keyring,libnotify,media-player}.py
RUN_DEPENDS +=		devel/libnotify \
			multimedia/gstreamer1/core \
			x11/gnome/libgnome-keyring

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--docdir=${PREFIX}/share/doc/liferea
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 ./autogen.sh

post-install:
	rm ${PREFIX}/lib/liferea/web-extension/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/liferea/plugins/

.include <bsd.port.mk>
