COMMENT=		GTK+-based electronic waveform viewer

V =			3.3.126
DISTNAME=		gtkwave-gtk3-${V}
PKGNAME=		gtkwave-${V}

CATEGORIES=		cad

HOMEPAGE=		https://gtkwave.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 bz2 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl lzma m pango-1.0 pangocairo-1.0 z

SITES=			${SITE_SOURCEFORGE:=gtkwave/}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/dconf

USE_GMAKE =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/gperf

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS=		archivers/bzip2 \
			archivers/xz \
			x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-tcl \
			--disable-mime-update \
			--enable-gtk3 \
			--with-gsettings

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		pkgdatadir="${PREFIX}/share/doc/gtkwave/" \
			examplesdir="${PREFIX}/share/examples/gtkwave/"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/icons/*png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
