# $OpenBSD: Makefile,v 1.43 2019/11/07 10:09:09 ajacoutot Exp $

COMMENT=		GTK client and libraries for SPICE remote desktop servers

DISTNAME=		spice-gtk-0.37
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		x11 net

SHARED_LIBS +=  spice-client-glib-2.0 6.0      # 14.0
SHARED_LIBS +=  spice-client-gtk-3.0  4.0      # 5.0

HOMEPAGE=		http://www.spice-space.org/page/Spice-Gtk

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject crypto dbus-1
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv intl jpeg json-glib-1.0 lz4 m ogg opus orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pulse pulse-mainloop-glib sasl2 sndfile
WANTLIB += ssl vorbis vorbisenc xcb xcb-render xcb-shm z

MASTER_SITES=		http://www.spice-space.org/download/gtk/

MODULES=		lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gobject-introspection \
			devel/spice-protocol \
			lang/vala \
			sysutils/usbutils \
			textproc/asciidoc

RUN_DEPENDS=		sysutils/usbutils

LIB_DEPENDS=		archivers/lz4 \
			audio/opus \
			audio/pulseaudio \
			devel/json-glib \
			multimedia/gstreamer1/plugins-base \
			security/cyrus-sasl2 \
			x11/gtk+3

USE_GMAKE=		Yes

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/subprojects/spice-common

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-smartcard \
			--disable-usbredir \
			--enable-introspection \
			--enable-vala \
			--enable-gstaudio \
			--enable-lz4

# XXX requires new phodav port
CONFIGURE_ARGS +=	--disable-webdav

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
