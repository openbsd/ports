# $OpenBSD: Makefile,v 1.17 2010/10/26 15:02:13 jasper Exp $

SHARED_ONLY=   	Yes

COMMENT=	GTK+2 subtitles editor

V=		0.37.1
DISTNAME=	subtitleeditor-${V}

CATEGORIES=	graphics editors

SHARED_LIBS +=  subtitleeditor 0.0     # .0.0

HOMEPAGE=	http://home.gna.org/subtitleeditor/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.gna.org/subtitleeditor/${V:R}/

.include <bsd.own.mk>
.if ${COMPILER_VERSION:L:Mgcc4*}
WANTLIB +=	stdc++
.else
MODULES += 	gcc4
MODGCC4_ARCHES =*
MODGCC4_LANGS =	c++ 
WANTLIB +=	estdc++
.endif

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 atkmm-1.6 c cairo
WANTLIB += cairomm-1.0 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gstbase-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkmm-2.4 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pixman-1 png pthread sigc-2.0
WANTLIB += xml2 z pthread-stubs xcb xcb-render gstnet-0.10 xcb-shm
WANTLIB += pcre enchant xml++-2.6 gstaudio-0.10 gsttag-0.10
WANTLIB += gstinterfaces-0.10 gstvideo-0.10 gstpbutils-0.10
WANTLIB += GL Xxf86vm drm gstcontroller-0.10 gstdataprotocol-0.10
WANTLIB += gstreamermm-0.10 gstcdda-0.10 gstnetbuffer-0.10 gstrtp-0.10


BUILD_DEPENDS=	:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good \
		:iso-codes-*:devel/iso-codes
LIB_DEPENDS=	:pcre->=6.4p2:devel/pcre \
		::textproc/enchant \
		::multimedia/gstreamer-0.10/mm \
		::multimedia/gstreamer-0.10/plugins-base \
		::x11/gtk2mm
RUN_DEPENDS=	:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good \
		:iso-codes-*:devel/iso-codes \
		:desktop-file-utils-*:devel/desktop-file-utils

MODULES+=	devel/gettext \
		textproc/intltool

USE_GMAKE=      Yes
USE_LIBTOOL=    Yes
USE_GROFF =	Yes

LIBTOOL_FLAGS= --tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GST_REGISTRY=${WRKDIR}/registry.${MACHINE_ARCH}.bin
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-default-video-sink=autovideosink \
		--with-default-audio-sink=autoaudiosink \
		--enable-ccache=no \
		--enable-gl=no

.include <bsd.port.mk>
