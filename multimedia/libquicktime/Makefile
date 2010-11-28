# $OpenBSD: Makefile,v 1.32 2010/11/28 18:08:19 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		library for reading and writing QuickTime files

DISTNAME=		libquicktime-1.1.5
REVISION=		4
CATEGORIES=		multimedia
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

SHARED_LIBS=		quicktime	4.0

HOMEPAGE=		http://libquicktime.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xaw Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xpm Xrandr Xrender Xt Xv Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat faac faad fontconfig freetype gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0 m ogg orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 pthread
WANTLIB += pthread-stubs schroedinger-1.0 sndio speex theora xcb
WANTLIB += xcb-render xcb-shm z gdk_pixbuf-2.0 avcodec avutil swscale
WANTLIB += dv gtk-x11-2.0 gdk-x11-2.0 jpeg mp3lame png vorbis vorbisfile
WANTLIB += vorbisenc x264

MODULES=		devel/gettext
BUILD_DEPENDS=		devel/doxygen>=1.7.2
LIB_DEPENDS=		audio/faac \
			audio/faad \
			audio/lame \
			audio/libvorbis \
			graphics/ffmpeg>=20100512 \
			graphics/jpeg \
			graphics/png \
			multimedia/libdv \
			multimedia/schroedinger \
			multimedia/x264 \
			x11/gtk+2

VMEM_WARNING=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

MAKE_ENV=		DOXYGEN_ENCODE_PATH_STRIP=${WRKSRC}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_search_pthread_create=-pthread \
			ac_cv_lib_ossaudio__oss_ioctl=no \
			ac_cv_header_soundcard_h=no

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gpl \
			--with-libdv \
			--without-alsa

post-install:
	rm -f ${PREFIX}/share/doc/libquicktime/apiref/dir_*.html

.include <bsd.port.mk>
