# $OpenBSD: Makefile,v 1.20 2009/11/18 00:49:09 sthen Exp $

COMMENT =	open source web browser engine

V = 1.1.15.2
DISTNAME =	webkit-${V}
# XXX do not remove v0. pX comes before vX.
PKGNAME =	webkit-${V}p2v0
CATEGORIES =	www

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Landry Breuil <gaston@gcu.info>

SHARED_LIBS =	webkit-1.0	1.0

# LGPLv2 / BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

VMEM_WARNING =	Yes

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

MODULES =	converters/libiconv \
		textproc/intltool \
		gcc4

MODGCC4_ARCHES =*
MODGCC4_LANGS =	c c++

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-video

#LIB_DEPENDS+=	gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
#		gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base \
#RUN_DEPENDS =	::multimedia/gstreamer-0.10/plugins-base,-ogg \
#		::multimedia/gstreamer-0.10/plugins-base,-vorbis \
#		::multimedia/gstreamer-0.10/plugins-base,-theora


CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11" \
		ac_cv_path_FLEX=${LOCALBASE}/bin/gflex

MAKE_FILE =	GNUmakefile

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c \
		expat fontconfig freetype gcrypt gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gnutls gobject-2.0 gpg-error gthread-2.0 intl jpeg m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread \
		tasn1 z cairo pixman-1 png pthread-stubs stdc++ xcb xml2

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0,gailutil::x11/gtk+2,-main \
		icudata,icui18n,icuuc::textproc/icu4c \
		sqlite3::databases/sqlite3 \
		xslt::textproc/libxslt \
		enchant::textproc/enchant \
		soup-2.4:libsoup->=2.28:devel/libsoup

BUILD_DEPENDS =	::devel/bison \
		::devel/flex \
		::devel/gperf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/WebCore/plugins/PluginDatabase.cpp

.include <bsd.port.mk>
