# $OpenBSD: Makefile,v 1.32 2010/10/19 08:02:53 espie Exp $

SHARED_ONLY=	Yes

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	SWF player with Firefox browser plugin

VER=		0.8.8
DISTNAME=	gnash-${VER}
REVISION=	0
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GNU:=gnash/${VER}/}

SHARED_LIBS=	gnashrender	0.0

HOMEPAGE=	http://gnashdev.org

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SDL.>=8 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xv agg.>=2 atk-1.0 \
		avcodec.>=14 avformat.>=13 avutil.>=7 boost_date_time-mt.>=2 \
		boost_thread-mt.>=2 bz2 c cairo crypto curl.>=5 expat faac \
		faad freetype fontconfig gdk_pixbuf-2.0 gdk-x11-2.0 gif.>=5 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsm gthread-2.0 \
		gtk-x11-2.0 idn jpeg.>=63 mp3lame m ogg orc-0.4 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pangox-1.0 pcre pixman-1 png.>=9 \
		pthread-stubs pthread schroedinger-1.0 sndio speex.>=8 \
		speexdsp.>=1 ssl stdc++ swscale.>=2 theora usbhid vorbis \
		vorbisenc x264 xcb xcb-render xcb-render-util z

MODULES=	devel/gettext
LIB_DEPENDS=	::archivers/bzip2 \
		::audio/speex \
		::devel/boost \
		::devel/sdl \
		::graphics/agg \
		::graphics/ffmpeg \
		::graphics/jpeg \
		::graphics/libungif \
		::graphics/png \
		::net/curl \
		::x11/gtk+2

USE_X11=	Yes
USE_GMAKE=	Yes
# Gnash requires GNU libtool 2.2 or greater, so use the bundled one
USE_LIBTOOL=	gnu
USE_GROFF =	Yes
LIBTOOL=	${WRKSRC}/libtool
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--disable-cygnal \
		--disable-jemalloc \
		--disable-silent-rules \
		--enable-renderer=agg \
		--enable-gui=gtk \
		--enable-media=ffmpeg \
		--with-libintl-prefix=${LOCALBASE} \
		--with-npapi-plugindir=${LOCALBASE}/lib/mozilla/plugins
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET=	install install-plugins

NO_REGRESS=	testsuite available at http://www.gnashdev.org/testcases/

SUBST_VARS=	VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnash
	${INSTALL_DATA} ${WRKSRC}/libbase/{gnashpluginrc,gnashrc} \
	    ${PREFIX}/share/examples/gnash

.include <bsd.port.mk>
