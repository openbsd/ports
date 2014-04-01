# $OpenBSD: Makefile,v 1.34 2014/04/01 14:52:09 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

SHARED_ONLY=   	Yes

COMMENT=	GTK+2 subtitles editor

V=		0.40.0
DISTNAME=	subtitleeditor-${V}
REVISION=	7

CATEGORIES=	graphics editors

SHARED_LIBS +=  subtitleeditor 0.0     # .0.0

HOMEPAGE=	http://home.gna.org/subtitleeditor/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += enchant expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstaudio-0.10 gstbase-0.10 gstcdda-0.10
WANTLIB += gstcontroller-0.10 gstdataprotocol-0.10 gstinterfaces-0.10
WANTLIB += gstnet-0.10 gstnetbuffer-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstreamermm-0.10 gstrtp-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkmm-2.4 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sigc-2.0 stdc++
WANTLIB += xcb xcb-render xcb-shm xml++-2.6 xml2 z orc-0.4

MASTER_SITES=	http://download.gna.org/subtitleeditor/${V:R}/

BUILD_DEPENDS=	multimedia/gstreamer-0.10/plugins-good \
		devel/iso-codes
LIB_DEPENDS=	textproc/enchant \
		multimedia/gstreamer-0.10/mm \
		multimedia/gstreamer-0.10/plugins-base \
		x11/gtk2mm
RUN_DEPENDS=	multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		devel/iso-codes \
		devel/desktop-file-utils \
		x11/gtk+2,-guic

MODULES+=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GST_REGISTRY=${WRKDIR}/registry.${MACHINE_ARCH}.bin
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-default-video-sink=autovideosink \
		--with-default-audio-sink=autoaudiosink \
		--enable-ccache=no \
		--enable-gl=no

post-install:
	rm ${PREFIX}/lib/subtitleeditor/plugins/*/*.{a,la}

.include <bsd.port.mk>
