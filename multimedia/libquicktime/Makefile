# $OpenBSD: Makefile,v 1.13 2008/01/26 02:02:50 jakemsr Exp $
# $FreeBSD: ports/multimedia/libquicktime/Makefile,v 1.19 2004/03/16 04:23:53 edwin Exp $

SHARED_ONLY=		Yes

COMMENT=		library for reading and writing quicktime files
DISTNAME=		libquicktime-1.0.2
CATEGORIES=		multimedia
SHARED_LIBS=		quicktime	3.0

HOMEPAGE=		http://libquicktime.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL ICE SM X11 Xau Xaw Xcomposite Xcursor \
			Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender Xt Xv atk-1.0.>=1011.3 a52 c expat \
			faac faad fontconfig freetype \
			glib-2.0.>=800.3 gmodule-2.0.>=800.3 \
			gobject-2.0.>=800.3 m ogg ossaudio \
			pango-1.0.>=1001.1 pangocairo-1.0.>=1001.1 \
			cairo glitz pangoft2-1.0.>=1001.1 pthread \
			pcre theora x264 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libquicktime/}

MODULES=		devel/gettext

LIB_DEPENDS=		vorbis.>=3,vorbisfile.>=4,vorbisenc.>=2::audio/libvorbis \
			jpeg.>=9::graphics/jpeg \
			png.>=4::graphics/png \
			dv.>=4::multimedia/libdv \
			mp3lame::audio/lame \
			avcodec.>=11,avutil.>=5::graphics/ffmpeg \
			gtk-x11-2.0.>=800.8,gdk-x11-2.0.>=800.8,gdk_pixbuf-2.0.>=800.8::x11/gtk+2

VMEM_WARNING=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_search_pthread_create=-pthread
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gpl \
			--without-alsa \
			--with-avcodec="${LOCALBASE}"

.include <bsd.port.mk>
