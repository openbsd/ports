# $OpenBSD: Makefile,v 1.27 2013/03/11 11:46:14 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	set of modules to use Gtk+2 libraries from Perl

MODULES=	cpan
DISTNAME=	Gtk2-1.221
REVISION=	5

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png z pthread-stubs xcb
WANTLIB += xcb-render xcb-render-util gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0

MODULES+=	devel/gettext

USE_GROFF =	Yes

LIB_DEPENDS=	x11/gtk+2
BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

RUN_DEPENDS=	devel/p5-Glib2>=1.200 \
		devel/p5-Pango \
		graphics/p5-Cairo>=1.00
		
TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
