# $OpenBSD: Makefile,v 1.118 2017/03/29 13:27:12 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.22.0
REVISION=		1

SHARED_LIBS +=  yelp                 0.0      # unknown

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi bz2 c cairo cairo-gobject dbus-1
WANTLIB += drm enchant epoxy estdc++ expat exslt ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-4.0 jpeg lzma m notify
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4

MODGNOME_TOOLS=		desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libyelp/yelp-man-parser.c

post-install:
# https://bugzilla.gnome.org/show_bug.cgi?id=648854
	${INSTALL_SCRIPT} ${FILESDIR}/yelp-groff \
		${PREFIX}/libexec/yelp-groff
	rm ${PREFIX}/lib/yelp/web-extensions/*.{a,la}

.include <bsd.port.mk>
