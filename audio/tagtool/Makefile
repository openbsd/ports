# $OpenBSD: Makefile,v 1.42 2019/07/17 14:49:20 danj Exp $

COMMENT=	Ogg Vorbis and MP3 files tagger

DISTNAME=	tagtool-0.12.3
REVISION=	27
CATEGORIES=	audio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tagtool/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 id3 intl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 vorbis vorbisfile xml2
WANTLIB += z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	textproc/intltool

LIB_DEPENDS=	audio/id3lib \
		audio/libvorbis \
		x11/gtk+2>=2.10 \
		devel/libglade2 \
		audio/libvorbis
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -logg -Wl,--export-dynamic"

USE_GMAKE=	Yes

.include <bsd.port.mk>
