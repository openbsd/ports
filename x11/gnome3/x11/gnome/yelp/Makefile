# $OpenBSD: Makefile,v 1.6 2011/06/06 17:05:28 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.0.3

REVISION=		1

SHARED_LIBS +=  yelp                      0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += bz2 c cairo cairo-gobject drm enchant expat exslt fontconfig
WANTLIB += freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error gstapp-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-3 icudata icui18n icuuc
WANTLIB += jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		x11/gnome/yelp-xsl
RUN_DEPENDS=		x11/gnome/yelp-xsl \
			x11/gnome/user-docs

LIB_DEPENDS=		www/webkit,gtk3

DESKTOP_FILES=		Yes

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-lzma \
			--enable-bz2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
