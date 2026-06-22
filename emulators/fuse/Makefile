COMMENT=		Free Unix Spectrum Emulator
DISTNAME=		fuse-1.9.0
CATEGORIES=		emulators
HOMEPAGE=		https://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL2 X11 Xcursor Xext Xfixes Xi Xrandr Xrender
WANTLIB += Xss audiofile bz2 c gcrypt glib-2.0 gpg-error iconv
WANTLIB += intl m ogg pcre2-8 png pthread samplerate sndio spectrum
WANTLIB += usbhid xcb xml2 z

SITES=			${SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/glib2 \
			audio/flac \
			audio/libogg \
			devel/libspectrum \
			devel/sdl2 \
			graphics/png \
			textproc/libxml

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:Mgtk}
LIB_DEPENDS+=		x11/gtk+3
CONFIGURE_ENV+=		ac_cv_type_long=no

USE_GMAKE=		Yes

WANTLIB += ${COMPILER_LIBCXX} XRes Xau Xcomposite Xdamage Xdmcp
WANTLIB += Xinerama atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 epoll-shim epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz jpeg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 wayland-client wayland-cursor
WANTLIB += wayland-egl xcb-render xcb-shm xkbcommon
.else
CONFIGURE_ARGS+=	--without-gtk
WANTLIB += ICE SM
.endif

.include <bsd.port.mk>
