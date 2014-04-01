# $OpenBSD: Makefile,v 1.21 2014/04/01 18:06:30 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	music management and playback application for GNOME

GNOME_VERSION=	2.6.2
GNOME_PROJECT=	banshee
REVISION=	0

CATEGORIES=	audio multimedia

HOMEPAGE=	http://banshee.fm/

# MIT/X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0 cairo
WANTLIB += dbus-1 dbus-glib-1 enchant expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-0.10 gstbase-1.0 gstcdda-0.10
WANTLIB += gstcontroller-0.10 gstdataprotocol-0.10 gstfft-0.10
WANTLIB += gstfft-1.0 gstinterfaces-0.10 gstpbutils-0.10 gstpbutils-1.0
WANTLIB += gstreamer-0.10 gstreamer-1.0 gsttag-0.10 gsttag-1.0
WANTLIB += gstvideo-0.10 gstvideo-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-1.0
WANTLIB += jpeg m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ webkitgtk-1.0 webp xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z

MODULES=	x11/gnome \
		lang/mono \
		devel/gettext

COMMON_DEPENDS=	devel/mono-notify \
		audio/mono-taglib \
		devel/dbus-sharp-glib \
		devel/mono-addins \
		devel/mono-gdata \
		net/mono-zeroconf \
		shells/bash \

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		devel/libmtp

RUN_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-good #libgstgconfelements
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-bad #bpmdetect (soundtouch)
RUN_DEPENDS +=	multimedia/gstreamer-0.10/plugins-ugly #mp3 support

LIB_DEPENDS=	www/webkit \
		multimedia/gstreamer-0.10/plugins-base

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp
CONFIGURE_ARGS=	--with-vendor-build-id="OpenBSD Ports" \
		--disable-shave

# XXX lang/boo is marked as BROKEN
CONFIGURE_ARGS += --disable-boo

# requires gtk-sharp-beans (not ported)
CONFIGURE_ARGS += --disable-gio-hardware

# requires libgpod-sharp (not ported)
CONFIGURE_ARGS += --disable-appledevice

# requires karma-sharp (not ported)
CONFIGURE_ARGS += --disable-karma

# requires gio-sharp (not ported)
CONFIGURE_ARGS += --disable-gio

DLLMAP_FILES=	src/Hyena/Hyena/Hyena.dll.config \
		src/Hyena/Hyena.Gui/Hyena.Gui.dll.config \
		src/Libraries/Mtp/Mtp.dll.config.in \
		src/Libraries/Mtp/Mtp.dll.config \
		src/Core/Banshee.Core/Banshee.Core.dll.config \
		src/Core/Banshee.Services/Banshee.Services.dll.config \
		src/Core/Banshee.ThickClient/Banshee.ThickClient.dll.config \
		src/Core/Banshee.Widgets/Banshee.Widgets.dll.config \
		src/Extensions/Banshee.NotificationArea/Banshee.NotificationArea.dll.config \
		src/Extensions/Banshee.MeeGo/Banshee.MeeGo.dll.config \
		src/Backends/Banshee.GStreamer/Banshee.GStreamer.dll.config \
		src/Backends/Banshee.Unix/Banshee.Unix.dll.config

# XXX the theme-icons target uses INSTALL_DATA during build which will
# fail when running as a non priviledge user (install -o/-g)
.if !target(do-install)
MAKE_FLAGS +=	INSTALL_DATA='/usr/bin/install -c -m 444'
.endif

post-install:
	rm ${PREFIX}/lib/banshee/Backends/*.{a,la}
	rm ${PREFIX}/lib/banshee/*.{a,la}

.include <bsd.port.mk>
