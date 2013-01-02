# $OpenBSD: Makefile,v 1.12 2013/01/02 17:12:22 landry Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.1.25
XFCE_GOODIE=	tumbler
REVISION=	1

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/tumbler-1/plugins lib/tumbler-1/plugins/cache

CONFIGURE_ARGS =	--disable-raw-thumbnailer \
			--disable-gstreamer-thumbnailer
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS +=	x11/dbus-glib \
		devel/libgsf \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		graphics/ffmpegthumbnailer \
		graphics/gdk-pixbuf2

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes
WANTLIB += Xrender Xxf86vm c cairo dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 jpeg lcms2 m openjpeg
WANTLIB += pcre pixman-1 png poppler poppler-glib
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z ffi bz2 stdc++ tiff gsf-1
WANTLIB += avcodec avformat avutil ffmpegthumbnailer
WANTLIB += ogg orc-0.4 swscale

.include <bsd.port.mk>
