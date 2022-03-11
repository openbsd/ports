COMMENT=	Glade 2.x support for Gtk2-Perl

DISTNAME=	Gtk2-GladeXML-1.008

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 perl xml2 z

MODULES=	cpan

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends>=0.301 \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

LIB_DEPENDS=	textproc/libxml \
		devel/libglade2

RUN_DEPENDS=	devel/p5-Glib2 \
		x11/p5-Gtk2

TEST_IS_INTERACTIVE=x11

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
