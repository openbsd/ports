# $OpenBSD: Makefile,v 1.32 2014/06/09 08:55:00 bentley Exp $

COMMENT=		Free Unix Spectrum Emulator
DISTNAME =		fuse-1.1.1
CATEGORIES=		emulators
HOMEPAGE=		http://fuse-emulator.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext ao audiofile bz2 c gcrypt glib-2.0 gpg-error
WANTLIB += m pcre png pthread spectrum xcb xml2 z
WANTLIB += FLAC SDL ogg sndio usbhid

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fuse-emulator/}

MODULES=		devel/gettext
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
LIB_DEPENDS+=		x11/gtk+2 \
			devel/glib2
CONFIGURE_ARGS+=	--with-gtk2

WANTLIB += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz graphite2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread-stubs
WANTLIB += xcb-render xcb-shm
.else
CONFIGURE_ARGS+=	--without-gtk
WANTLIB += ICE SM
.endif

.include <bsd.port.mk>
