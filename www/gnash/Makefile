# $OpenBSD: Makefile,v 1.60 2014/04/10 06:13:04 brad Exp $

SHARED_ONLY=	Yes

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	SWF player with Firefox browser plugin

VER=		0.8.10
DISTNAME=	gnash-${VER}
REVISION=	6
EPOCH=		0
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GNU:=gnash/${VER}/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gnashdev.org

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL X11 agg avcodec avformat avutil boost_iostreams \
		boost_program_options-mt boost_system-mt boost_thread-mt \
		c curl fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gif glib-2.0 gobject-2.0 gtk-x11-2.0 jpeg ltdl m png \
		pthread speex speexdsp stdc++ swresample swscale z

MODULES=	devel/gettext
BUILD_DEPENDS=	devel/xulrunner/24,-devel
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	audio/speex \
		devel/boost \
		devel/libtool,-ltdl \
		devel/sdl \
		graphics/agg \
		graphics/ffmpeg>=20121026 \
		graphics/jpeg \
		graphics/giflib \
		graphics/png \
		net/curl \
		x11/gtk+2

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
AUTOCONF_VERSION=2.64
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-cygnal \
		--disable-jemalloc \
		--enable-renderer=agg \
		--enable-gui=gtk \
		--enable-media=ffmpeg \
		--without-gconf \
		--with-npapi-plugindir=${LOCALBASE}/lib/mozilla/plugins
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET=	install install-plugins

# testsuite available at http://www.gnashdev.org/testcases/
NO_TEST=	Yes

SUBST_VARS=	VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnash
	${INSTALL_DATA} ${WRKSRC}/libbase/{gnashpluginrc,gnashrc} \
	    ${PREFIX}/share/examples/gnash

.include <bsd.port.mk>
