# $OpenBSD: Makefile,v 1.23 2009/09/28 18:33:15 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	flash player with firefox browser plugin

VER=		0.8.3
DISTNAME=	gnash-${VER}
PKGNAME=	${DISTNAME}p2

CATEGORIES=	www
MASTER_SITES=	http://getgnash.org/packages/releases/

HOMEPAGE=	http://gnashdev.org

MAINTAINER=	Deanna Phillips <deanna@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c crypto expat freetype fontconfig \
		glib-2.0 gobject-2.0 gthread-2.0 gmodule-2.0\
		idn pcre jpeg m pthread ssl stdc++ z \
		gstbase-0.10 gstreamer-0.10

MODULES=	devel/gettext

LIB_DEPENDS+=	curl.>=5::net/curl \
		xml2.>=9.0::textproc/libxml \
		agg.>=2::graphics/agg \
		gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2 \
		boost_thread-mt.>=1,boost_date_time-mt.>=1:boost->=1.34.1p2:devel/boost \
		ltdl::devel/libtool,-ltdl \
		gstpbutils-0.10::multimedia/gstreamer-0.10/plugins-base

RUN_DEPENDS+=	:gstreamer-ffmpeg->=0.10.4p0:multimedia/gstreamer-0.10/plugins-ffmpeg \
		::multimedia/gstreamer-0.10/plugins-ugly \
		::multimedia/gstreamer-0.10/plugins-bad \
		:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf \
		:gstreamer-gnome->=0.10.19p1:multimedia/gstreamer-0.10/plugins-base,-gnome

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnash
	${INSTALL_DATA} ${WRKSRC}/libbase/{gnashpluginrc,gnashrc} \
	${PREFIX}/share/examples/gnash

CONFIGURE_ARGS+=--with-npapi-plugindir=${LOCALBASE}/lib/mozilla-plugins \
		--disable-cygnal \
		--disable-debugger \
		--enable-renderer=agg \
		--enable-gui=gtk \
		--with-libintl-prefix=${LOCALBASE}

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET=	install install-plugins

NO_REGRESS=	testsuite available at http://www.gnashdev.org/testcases/

SHARED_LIBS=	gnashnet 0.0 \
		mozsdk 0.0

SUBST_VARS=	VER

.include <bsd.port.mk>
