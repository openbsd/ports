# $OpenBSD: Makefile,v 1.39 2018/06/29 22:16:09 espie Exp $

COMMENT=	Ogg Vorbis and MP3 files tagger

DISTNAME=	tagtool-0.12.3
REVISION=	25
CATEGORIES=	audio

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tagtool/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 id3 intl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 vorbis vorbisfile xml2
WANTLIB += z

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
