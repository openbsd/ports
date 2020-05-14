# $OpenBSD: Makefile,v 1.138 2020/05/14 16:09:28 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.36.0

SHARED_LIBS +=  yelp                 0.0      # unknown

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0 brotlicommon
WANTLIB += brotlidec bz2 c cairo cairo-gobject drm enchant-2 epoxy
WANTLIB += expat exslt ffi fontconfig freetype fribidi gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hyphen iconv icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg lzma m notify openjp2 orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png psl secret-1 soup-2.4
WANTLIB += sqlite3 tasn1 unistring webkit2gtk-4.0 webp webpdemux
WANTLIB += woff2common woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence xslt z

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libyelp/yelp-man-parser.c

post-install:
# https://bugzilla.gnome.org/show_bug.cgi?id=648854
	${INSTALL_SCRIPT} ${FILESDIR}/yelp-groff \
		${PREFIX}/libexec/yelp-groff
	rm ${PREFIX}/lib/yelp/web-extensions/*.{a,la}

.include <bsd.port.mk>
