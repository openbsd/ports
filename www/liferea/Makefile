# $OpenBSD: Makefile,v 1.90 2017/02/18 17:32:37 ajacoutot Exp $

BROKEN-i386=		hangs during build while running g-ir-scanner

COMMENT=		simple GTK desktop news aggregator

GH_ACCOUNT=		lwindolf
GH_PROJECT=		liferea
GH_TAGNAME=		v1.12-rc2
PKGNAME=		liferea-1.12rc2

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant epoxy estdc++ expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hogweed hyphen
WANTLIB += iconv icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lzma m nettle notify orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs secret-1
WANTLIB += soup-2.4 sqlite3 tasn1 webkit2gtk-4.0 webp xcb
WANTLIB += xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			textproc/intltool

USE_GMAKE=		Yes

LIB_DEPENDS=		devel/libpeas \
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

.include <bsd.port.mk>
