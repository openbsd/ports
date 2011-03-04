# $OpenBSD: Makefile,v 1.7 2011/03/04 13:25:41 jasper Exp $

COMMENT=		GTK+-based electronic waveform viewer

DISTNAME=		gtkwave-3.3.20
CATEGORIES=		cad

HOMEPAGE=		http://gtkwave.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 bz2 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS=		archivers/bzip2 \
			archivers/xz \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-tcl \
			--enable-fatlines

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		pkgdatadir="${PREFIX}/share/doc/gtkwave/" \
			examplesdir="${PREFIX}/share/examples/gtkwave/"

USE_GROFF =		Yes

.include <bsd.port.mk>
