# $OpenBSD: Makefile,v 1.63 2020/03/20 16:44:25 naddy Exp $

COMMENT=	library for reading and writing QuickTime files

DISTNAME=	libquicktime-1.2.4
REVISION=	15
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libquicktime/}

SHARED_LIBS=	quicktime	5.1

HOMEPAGE=	http://libquicktime.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xaw Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt Xv Xxf86vm avcodec avutil c cairo drm dv expat faad
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gsm gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl jpeg m mp3lame
WANTLIB += ogg opus pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread sndio speex ${COMPILER_LIBCXX}
WANTLIB += swresample swscale vorbisenc vorbisfile vpx x264 x265
WANTLIB += xcb xcb-dri2 xcb-glx xcb-render xcb-shm xvidcore z
WANTLIB += atk-1.0 vorbis

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/faad \
		audio/lame \
		audio/libvorbis \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/png \
		multimedia/libdv \
		multimedia/x264 \
		x11/gtk+2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-gpl \
		--enable-static \
		--with-libdv \
		--without-alsa \
		--without-faac \
		--without-schroedinger \
		--without-doxygen
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		ac_cv_lib_ossaudio__oss_ioctl=no \
		ac_cv_header_soundcard_h=no

post-install:
	@find ${PREFIX}/lib/libquicktime -name '*.a' -delete
	@find ${PREFIX}/lib -name '*.la' -delete

.include <bsd.port.mk>
