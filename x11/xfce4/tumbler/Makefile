# $OpenBSD: Makefile,v 1.17 2014/07/18 12:10:18 ajacoutot Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.1.29
XFCE_GOODIE=	tumbler

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/tumbler-1/plugins lib/tumbler-1/plugins/cache

CONFIGURE_ARGS =	--disable-gtk-doc \
			--disable-raw-thumbnailer \
			--disable-gstreamer-thumbnailer

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'
FAKE_FLAGS =	confdir=${PREFIX}/share/examples/tumbler

LIB_DEPENDS +=	x11/dbus-glib \
		devel/libgsf \
		net/curl \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		graphics/ffmpegthumbnailer \
		graphics/gdk-pixbuf2

WANTLIB += X11 Xext Xrender c cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 jpeg lcms2 m openjpeg
WANTLIB += pcre pixman-1 png poppler poppler-glib
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z ffi bz2 tiff gsf-1
WANTLIB += avcodec avformat avutil ffmpegthumbnailer
WANTLIB += ogg orc-0.4 swscale
WANTLIB += crypto curl idn ssl theoradec vorbis

.include <bsd.port.mk>
