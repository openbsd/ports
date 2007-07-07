# $OpenBSD: Makefile,v 1.12 2007/07/07 10:47:04 deanna Exp $
SHARED_ONLY=	Yes

COMMENT=	"flash player with firefox browser plugin"
DISTNAME=	gnash-0.8.0
SHARED_LIBS +=	gnashbase 2.0
SHARED_LIBS +=	gnashgeo 2.0
SHARED_LIBS +=	gnashamf 2.0
SHARED_LIBS +=	gnashserver 2.0
SHARED_LIBS +=	gnashbackend 2.0
SHARED_LIBS +=	gnashgui 2.0
SHARED_LIBS +=	gnashplayer 2.0

CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GNU:=/gnash/0.8.0/}

HOMEPAGE=	http://gnash.lulu.com

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# patented codecs
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

LIBTOOL_FLAGS+=	--tag=disable-static
MODULES=	gettext
NO_REGRESS=	"testsuite available at http://www.gnashdev.org/testcases/"
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

BUILD_DEPENDS+=	::devel/boost


LIB_DEPENDS+=	curl.>=5::net/curl \
		xml2.>=9.0::textproc/libxml \
		theora.>=2::multimedia/libtheora \
		agg.>=2::graphics/agg \
		gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2 \
		boost_thread-mt,boost_date_time::devel/boost,-libs \
		gsm::audio/gsm ltdl::devel/libtool,-ltdl \
		SDL.>=7::devel/sdl \
		vorbis,vorbisenc::audio/libvorbis \
		avcodec.>=9,avutil.>=2,avformat.>=9::graphics/ffmpeg

WANTLIB=	Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat \
		freetype fontconfig Xrender usbhid Xext X11 ICE SM \
		stdc++ m pthread c ssl crypto z ogg cairo \
		glib-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 pangox-1.0 \
		gobject-2.0 gmodule-2.0 atk-1.0 png jpeg glitz idn

CONFIGURE_STYLE=gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=--enable-media=ffmpeg \
		--with-plugindir=${LOCALBASE}/lib/mozilla-plugins \
		--disable-klash \
		--disable-cygnal \
		--disable-debugger \
		--enable-renderer=agg \
		--enable-gui=gtk \
		--without-gcc-arch \
		--with-expat-incl=${X11BASE}/include \
		--with-expat-lib=${X11BASE}/lib \
		--with-libintl-prefix=${LOCALBASE}

MAKE_FLAGS+=	libgnashbase_la_LDFLAGS= \
		libgnashgeo_la_LDFLAGS= \
		libgnashamf_la_LDFLAGS= \
		libgnashserver_la_LDFLAGS= \
		libgnashbackend_la_LDFLAGS= \
		libgnashgui_la_LDFLAGS= \
		libgnashplayer_la_LDFLAGS=

.include <bsd.port.mk>
