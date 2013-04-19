# $OpenBSD: Makefile,v 1.14 2013/04/19 12:17:50 ajacoutot Exp $

COMMENT=		GTK+-based electronic waveform viewer

DISTNAME=		gtkwave-3.3.45
CATEGORIES=		cad
REVISION=		0

HOMEPAGE=		http://gtkwave.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gtkwave/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 lzma
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/gperf
RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic
LIB_DEPENDS=		archivers/bzip2 \
			archivers/xz \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-tcl \
			--disable-mime-update \
			--enable-fatlines

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		pkgdatadir="${PREFIX}/share/doc/gtkwave/" \
			examplesdir="${PREFIX}/share/examples/gtkwave/"

USE_GROFF =		Yes

.include <bsd.port.mk>
