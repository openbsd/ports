COMMENT=		tool for producing computational artwork
DISTNAME=		fyre-1.0.1
REVISION=		29
CATEGORIES=		graphics

HOMEPAGE=		http://fyre.navi.cx/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_3
WANTLIB += IlmThread-3_3 Imath-3_1 X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += OpenEXR-3_3 OpenEXRCore-3_3 OpenEXRUtil-3_3 harfbuzz
WANTLIB += pangocairo-1.0 pangoft2-1.0 xml2

COMPILER =		base-clang ports-gcc base-gcc

SITES=			http://releases.navi.cx/fyre/ \
			https://distfiles.sigtrap.nl/

LIB_DEPENDS=		devel/libglade2 \
			graphics/openexr
RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--disable-gnet

# quirky, but prevents a patch
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/update-mime-database
	@ln -s /usr/bin/true ${WRKDIR}/bin/update-desktop-database

.include <bsd.port.mk>
