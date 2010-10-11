# $OpenBSD: Makefile,v 1.18 2010/10/11 08:11:17 jasper Exp $

COMMENT=	Ogg Vorbis and MP3 files tagger

DISTNAME=	tagtool-0.12.3
REVISION=	10
CATEGORIES=	audio
HOMEPAGE=	http://pwp.netcabo.pt/paol/tagtool/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tagtool/}
EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xml2 z gthread-2.0 pthread
WANTLIB += xcb-render xcb-render-util id3.>=3.8 vorbis.>=5.0
WANTLIB += gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0.>=0.3
WANTLIB += vorbisfile.>=4

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	::audio/id3lib \
		::audio/libvorbis \
		:gtk+2->=2.10:x11/gtk+2 \
		::devel/libglade2 \
		::audio/libvorbis
RUN_DEPENDS=	::x11/hicolor-icon-theme \
		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -logg"

USE_GMAKE=	Yes
USE_X11=	Yes

.include <bsd.port.mk>
