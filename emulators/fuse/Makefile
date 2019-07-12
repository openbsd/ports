# $OpenBSD: Makefile,v 1.45 2019/07/12 20:46:08 sthen Exp $

COMMENT=		Free Unix Spectrum Emulator
DISTNAME=		fuse-1.5.2
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC X11 SDL Xext ao audiofile bz2 c gcrypt
WANTLIB += glib-2.0 gpg-error iconv intl lzma m ogg pcre png pthread
WANTLIB += sndio spectrum usbhid xcb xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

LIB_DEPENDS=		devel/glib2 \
			audio/flac \
			audio/libogg \
			devel/libspectrum \
			devel/sdl \
			graphics/png \
			textproc/libxml \
			audio/libao

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lbz2"
CONFIGURE_ARGS=		--with-libao

FLAVORS=gtk
FLAVOR?=

.if ${FLAVOR:Mgtk}
LIB_DEPENDS+=		x11/gtk+3
CONFIGURE_ENV+=		ao_available=yes

WANTLIB += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 xcb-render xcb-shm
.else
CONFIGURE_ARGS+=	--without-gtk
WANTLIB += ICE SM
.endif

.include <bsd.port.mk>
