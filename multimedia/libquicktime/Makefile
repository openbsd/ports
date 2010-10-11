# $OpenBSD: Makefile,v 1.26 2010/10/11 08:15:54 jasper Exp $
# $FreeBSD: ports/multimedia/libquicktime/Makefile,v 1.19 2004/03/16 04:23:53 edwin Exp $

SHARED_ONLY=		Yes

COMMENT=		library for reading and writing quicktime files
DISTNAME=		libquicktime-1.1.5
REVISION=		2
CATEGORIES=		multimedia
SHARED_LIBS=		quicktime	4.0

HOMEPAGE=		http://libquicktime.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= GL ICE SM X11 Xau Xaw Xcomposite Xcursor \
	Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
	Xrender Xt Xv atk-1.0 c cairo expat faac \
	faad fontconfig freetype gio-2.0 glib-2.0 \
	gmodule-2.0 gobject-2.0 gsm \
	gthread-2.0 m ogg orc-0.4 pango-1.0 \
	pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
	pthread pthread-stubs schroedinger-1.0 \
	sndio speex theora xcb xcb-render \
	xcb-render-util z gdk_pixbuf-2.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:doxygen-*:devel/doxygen
LIB_DEPENDS=		avcodec.>=14,avutil.>=7,swscale.>=2:ffmpeg->=20100512:graphics/ffmpeg \
			dv.>=4::multimedia/libdv \
			gtk-x11-2.0.>=800.8,gdk-x11-2.0.>=800.8::x11/gtk+2 \
			jpeg.>=9::graphics/jpeg \
			mp3lame::audio/lame \
			png.>=4::graphics/png \
			vorbis.>=3,vorbisfile.>=4,vorbisenc.>=2::audio/libvorbis \
			x264::multimedia/x264

VMEM_WARNING=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
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
