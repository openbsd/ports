# $OpenBSD: Makefile,v 1.43 2011/03/15 06:24:47 ajacoutot Exp $

COMMENT-main=	GNOME media utilities
COMMENT-glade3=	GNOME media profiles catalog for Glade3

GNOME_PROJECT=	gnome-media
GNOME_VERSION=	2.32.0

PKGNAME-main=	${DISTNAME}
PKGNAME-glade3=	glade3-${DISTNAME}

REVISION-main=	2

SHARED_LIBS +=	gnome-media-profiles 1.0      # .0.0

CATEGORIES-main=	x11 ${CATEGORIES}
CATEGORIES-glade3=	devel ${CATEGORIES}

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xml2 z

MULTI_PACKAGES=	-main -glade3

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	multimedia/gstreamer-0.10/plugins-good

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c canberra canberra-gtk gstaudio-0.10 gstbase-0.10
WANTLIB-main += gstinterfaces-0.10 ltdl ogg pthread vorbis vorbisfile

LIB_DEPENDS-main= multimedia/gstreamer-0.10/plugins-base>=0.10.25 \
		audio/libcanberra

WANTLIB-glade3 += ${WANTLIB}
WANTLIB-glade3 += gladeui-1 gnome-media-profiles

LIB_DEPENDS-glade3= ${BUILD_PKGPATH},-main \
		devel/glade3
RUN_DEPENDS-glade3= ${MODGETTEXT_RUN_DEPENDS}

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-media

CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		CDROM_HOST="bsd"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
