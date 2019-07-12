# $OpenBSD: Makefile,v 1.55 2019/07/12 20:43:34 sthen Exp $

COMMENT=	GTK+2 program to synchronize an Apple iPod
DISTNAME=	gtkpod-1.0.0
REVISION=	10
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xcomposite Xdamage c cairo fontconfig freetype m pthread
WANTLIB += z xml2 glib-2.0 gmodule-2.0 gobject-2.0 intl
WANTLIB += gthread-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0
WANTLIB += gio-2.0 id3tag gpod gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 curl
WANTLIB += glade-2.0 FLAC ogg vorbis vorbisfile

USE_GMAKE=	Yes

#libmp4v2 is dlopen()'ed at runtime
BUILD_DEPENDS=	multimedia/libmp4v2
RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/libmp4v2 \
		x11/gtk+3,-guic

LIB_DEPENDS=	audio/libid3tag \
		audio/libgpod \
		audio/flac \
		audio/libvorbis \
		devel/libglade2 \
		net/curl

MODULES=	textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=	--with-curl \
			--with-ogg \
			--with-flac
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -logg -lvorbis -lm"

.include <bsd.port.mk>
