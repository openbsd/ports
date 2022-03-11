COMMENT=		Free Unix Spectrum Emulator
DISTNAME=		fuse-1.6.0
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC SDL2 X11 Xcursor Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xss Xxf86vm audiofile bz2 c gcrypt glib-2.0
WANTLIB += gpg-error iconv intl lzma m ogg pcre png pthread samplerate
WANTLIB += sndio spectrum usbhid xcb xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

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

WANTLIB += ${COMPILER_LIBCXX} Xcomposite Xdamage atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 xcb-render xcb-shm
.else
CONFIGURE_ARGS+=	--without-gtk
WANTLIB += ICE SM
.endif

.include <bsd.port.mk>
