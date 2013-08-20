# $OpenBSD: Makefile,v 1.46 2013/08/20 22:05:47 zhuk Exp $

COMMENT=	GTK+2 program to synchronize an Apple iPod
DISTNAME=	gtkpod-1.0.0
REVISION =	2
CATEGORIES=	audio x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xcomposite Xdamage c cairo expat fontconfig freetype m pthread
WANTLIB += pthread-stubs xcb z xml2 png glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 atk-1.0 pixman-1
WANTLIB += gio-2.0 id3tag gpod gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 curl
WANTLIB += glade-2.0 xcb-render GL xcb-shm FLAC ogg vorbis vorbisfile

USE_GMAKE=	Yes

#libmp4v2 is dlopen()'ed at runtime
RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/libmp4v2 \
		x11/gtk+2,-guic

LIB_DEPENDS=	audio/libid3tag \
		audio/libgpod \
		audio/flac \
		audio/libvorbis \
		devel/libglade2 \
		net/curl

MODULES=	devel/gettext textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=	--with-curl \
			--with-ogg \
			--with-flac
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -logg -lvorbis -lm"

.include <bsd.port.mk>
