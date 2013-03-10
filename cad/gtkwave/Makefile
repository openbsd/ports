# $OpenBSD: Makefile,v 1.12 2013/03/10 23:04:45 espie Exp $

COMMENT=		GTK+-based electronic waveform viewer

DISTNAME=		gtkwave-3.3.28
REVISION=		0
CATEGORIES=		cad

HOMEPAGE=		http://gtkwave.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

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
