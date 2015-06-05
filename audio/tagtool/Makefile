# $OpenBSD: Makefile,v 1.29 2015/06/05 12:20:39 ajacoutot Exp $

COMMENT=	Ogg Vorbis and MP3 files tagger

DISTNAME=	tagtool-0.12.3
REVISION=	17
CATEGORIES=	audio

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tagtool/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xml2 z gthread-2.0 pthread
WANTLIB += xcb-render id3>=3.8 vorbis>=5
WANTLIB += gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0>=0.3
WANTLIB += vorbisfile>=4 GL xcb-shm

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	audio/id3lib \
		audio/libvorbis \
		x11/gtk+2>=2.10 \
		devel/libglade2 \
		audio/libvorbis
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -logg"

USE_GMAKE=	Yes

.include <bsd.port.mk>
