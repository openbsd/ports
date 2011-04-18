# $OpenBSD: Makefile,v 1.4 2011/04/18 23:37:07 sthen Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.1.6
XFCE_GOODIE=	tumbler

REVISION=	2

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS =	--disable-linker-opts
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS +=	x11/dbus-glib \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		graphics/ffmpegthumbnailer \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm avcodec avformat
WANTLIB += avutil bz2 c cairo dbus-1 dbus-glib-1 drm expat faac
WANTLIB += ffmpegthumbnailer fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0
WANTLIB += jpeg lcms m mp3lame ogg openjpeg orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png poppler
WANTLIB += poppler-glib pthread pthread-stubs schroedinger-1.0
WANTLIB += speex swscale theoradec theoraenc vorbis vorbisenc
WANTLIB += vpx x264 xcb xcb-render xcb-shm xml2 z

.include <bsd.port.mk>
