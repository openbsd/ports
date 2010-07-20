# $OpenBSD: Makefile,v 1.2 2010/07/20 14:28:16 landry Exp $

COMMENT=		GTK+-based electronic waveform viewer

DISTNAME=		gtkwave-3.3.9
REVISION=		0
CATEGORIES=		cad

HOMEPAGE=		http://gtkwave.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util z bz2 lzma gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0

MODULES=		devel/gettext

BUILD_DEPENDS=		::devel/gperf

LIB_DEPENDS=		::archivers/bzip2 \
			::archivers/xz \
			::x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-tcl \
			--enable-fatlines

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
