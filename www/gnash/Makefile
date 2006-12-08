# $OpenBSD: Makefile,v 1.6 2006/12/08 15:40:26 deanna Exp $
SHARED_ONLY=	Yes

COMMENT=	"flash player with firefox browser plugin"
DISTNAME=	gnash-0.7.2
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	www
MASTER_SITES=	ftp://ftp.gnu.org/pub/gnu/gnash/0.7.2/

HOMEPAGE=	http://www.gnu.org/software/gnash/

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

LIBTOOL_FLAGS+=	--tag=disable-static
MODULES=	gettext
NO_REGRESS=	"testsuite available at http://www.gnu.org/software/gnash/testcases"
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes

BUILD_DEPENDS+=	::devel/boost

LIB_DEPENDS+=	atk-1.0.>=1011::devel/atk \
		curl.>=4::net/curl \
		xml2.>=9.0::textproc/libxml \
		theora.>=2::multimedia/libtheora \
		ogg.>=5::audio/libogg \
		png.>=5::graphics/png \
		jpeg.>=62::graphics/jpeg \
		glitz.>=1::graphics/glitz \
		SDL.>=6::devel/sdl \
		agg.>=2::graphics/agg \
		cairo.>=4::graphics/cairo \
		avcodec.>=7,avutil.>=1,avformat.>=7::graphics/ffmpeg \
		glib-2.0.>=1000.3,gmodule-2.0.>=1000.3::devel/glib2 \
		gobject-2.0.>=1000.3::devel/glib2 \
		pango-1.0.>=1200.3,pangocairo-1.0.>=1200.3::devel/pango \
		pangoft2-1.0.>=1200.3,pangox-1.0.>=1200.3::devel/pango \
		gdk_pixbuf-2.0.>=802.1,gtk-x11-2.0.>=802.1::x11/gtk+2 \
		gdk-x11-2.0.>=802.1::x11/gtk+2

WANTLIB=	freetype fontconfig Xrender ossaudio usbhid \
		Xext X11 z stdc++ m pthread c ssl crypto

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_gsm_gsm_encode=no

CONFIGURE_ARGS+=--enable-plugin \
		--enable-sound=SDL \
		--with-plugindir=${LOCALBASE}/lib/mozilla-plugins \
		--without-arts \
		--disable-klash \
		--enable-renderer=agg \
		--enable-gui=gtk \
		--with-mp3-decoder=ffmpeg \
		--without-gcc-arch

MAKE_FLAGS+=	libgnashbase_la_LDFLAGS='-version-info 1:0' \
		libgnashgeo_la_LDFLAGS='-version-info 1:0' \
		libgnashamf_la_LDFLAGS='-version-info 1:0' \
		libgnashserver_la_LDFLAGS='-version-info 1:0' \
		libgnashbackend_la_LDFLAGS='-version-info 1:0' \
		libgnashgui_la_LDFLAGS='-version-info 1:0'

SHARED_LIBS +=	gnashbase 1.0
SHARED_LIBS +=	gnashgeo 1.0
SHARED_LIBS +=	gnashamf 1.0
SHARED_LIBS +=	gnashserver 1.0
SHARED_LIBS +=	gnashbackend 1.0
SHARED_LIBS +=	gnashgui 1.0

.include <bsd.port.mk>
