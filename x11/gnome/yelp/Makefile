# $OpenBSD: Makefile,v 1.129 2018/05/15 13:27:47 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.28.1
REVISION=		0

SHARED_LIBS +=  yelp                 0.0      # unknown

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi
WANTLIB += brotlicommon brotlidec bz2 c cairo cairo-gobject dbus-1
WANTLIB += drm enchant-2 epoxy expat exslt ffi fontconfig freetype
WANTLIB += fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hyphen iconv icudata icui18n icuuc intl javascriptcoregtk-4.0
WANTLIB += jpeg lzma m notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png secret-1 soup-2.4 sqlite3
WANTLIB += tasn1 webkit2gtk-4.0 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z aspell

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4

MODGNOME_TOOLS=		desktop-file-utils

CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libyelp/yelp-man-parser.c

post-install:
# https://bugzilla.gnome.org/show_bug.cgi?id=648854
	${INSTALL_SCRIPT} ${FILESDIR}/yelp-groff \
		${PREFIX}/libexec/yelp-groff
	rm ${PREFIX}/lib/yelp/web-extensions/*.{a,la}

.include <bsd.port.mk>
