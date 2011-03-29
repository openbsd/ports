# $OpenBSD: Makefile,v 1.3 2011/03/29 23:22:17 jakemsr Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.1.6
XFCE_GOODIE=	tumbler

REVISION=	1

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

WANTLIB += c dbus-1 dbus-glib-1 freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 jpeg m pcre z png pthread gdk_pixbuf-2.0
WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm cairo drm expat
WANTLIB += fontconfig gdk-x11-2.0 lcms openjpeg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 poppler poppler-glib pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2
WANTLIB += avcodec avformat avutil bz2 faac ffmpegthumbnailer
WANTLIB += gsm mp3lame ogg orc-0.4 schroedinger-1.0 speex swscale
WANTLIB += theora vorbis vorbisenc x264

.include <bsd.port.mk>
