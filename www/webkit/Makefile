# $OpenBSD: Makefile,v 1.35 2010/10/11 08:19:04 jasper Exp $

COMMENT =	open source web browser engine

DISTNAME =	webkit-1.2.4
EPOCH =		0
REVISION=	0
CATEGORIES =	www

HOMEPAGE =	http://webkitgtk.org/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER =	Landry Breuil <gaston@gcu.info>

SHARED_LIBS =	webkit-1.0	2.2 #.19.5

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
		textproc/intltool

.include <bsd.own.mk>
.if ${COMPILER_VERSION:L:Mgcc4*}
STDCPPLIB = stdc++
.else
MODULES += 	gcc4
MODGCC4_ARCHES =*
MODGCC4_LANGS =	c c++
STDCPPLIB = estdc++
.endif

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lX11" \
		ac_cv_path_FLEX=${LOCALBASE}/bin/gflex
CONFIGURE_ARGS+=--enable-introspection=no

MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	STDCPPLIB=${STDCPPLIB}

RUN_DEPENDS =	::multimedia/gstreamer-0.10/plugins-ffmpeg \
		::multimedia/gstreamer-0.10/plugins-good

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c xcb-render \
		expat fontconfig freetype gcrypt gio-2.0 glib-2.0 gmodule-2.0 \
		gnutls gobject-2.0 gpg-error gthread-2.0 intl jpeg m \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 gailutil \
		gstreamer-0.10 gstbase-0.10 gstvideo-0.10 gstapp-0.10 gstpbutils-0.10 \
		icudata icui18n icuuc sqlite3 xslt enchant soup-2.4 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pthread xcb-render-util \
		tasn1 z cairo pixman-1 png pthread-stubs xcb xml2 ${STDCPPLIB}

LIB_DEPENDS =	::x11/gtk+2,-main \
		::multimedia/gstreamer-0.10/core \
		::multimedia/gstreamer-0.10/plugins-base \
		:icu4c->=4.4:textproc/icu4c \
		::databases/sqlite3 \
		::textproc/libxslt \
		::textproc/enchant \
		:libsoup->=2.28:devel/libsoup

BUILD_DEPENDS =	::devel/bison \
		::devel/flex \
		::devel/gperf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/WebCore/plugins/PluginDatabase.cpp

.include <bsd.port.mk>
