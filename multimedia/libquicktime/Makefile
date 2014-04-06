# $OpenBSD: Makefile,v 1.44 2014/04/06 20:24:01 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	library for reading and writing QuickTime files

DISTNAME=	libquicktime-1.2.4
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libquicktime/}

SHARED_LIBS=	quicktime	5.1

HOMEPAGE=	http://libquicktime.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xaw Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xpm Xrandr Xrender Xt Xv
WANTLIB += Xxf86vm atk-1.0 avcodec avutil c cairo drm dv expat
WANTLIB += ffi faad fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0
WANTLIB += gtk-x11-2.0 jpeg m mp3lame ogg orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += schroedinger-1.0 sndio speex stdc++ swscale theoradec
WANTLIB += theoraenc vorbis vorbisenc vorbisfile vpx x264 xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/doxygen>=1.7.2
LIB_DEPENDS=	audio/faad \
		audio/lame \
		audio/libvorbis \
		graphics/ffmpeg>=20100512 \
		graphics/jpeg \
		graphics/png \
		multimedia/libdv \
		multimedia/schroedinger \
		multimedia/x264 \
		x11/gtk+2

MAKE_ENV=	DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-gpl \
		--enable-static \
		--with-libdv \
		--without-alsa \
		--without-faac
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		ac_cv_lib_ossaudio__oss_ioctl=no \
		ac_cv_header_soundcard_h=no

post-install:
	@rm -f ${PREFIX}/share/doc/libquicktime/apiref/dir_*.html
	@find ${PREFIX}/lib/libquicktime -name '*.a' -print | xargs rm
	@find ${PREFIX}/lib -name '*.la' -print | xargs rm

.include <bsd.port.mk>
