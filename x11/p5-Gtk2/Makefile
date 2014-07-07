# $OpenBSD: Makefile,v 1.33 2014/07/07 11:42:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	set of modules to use Gtk+2 libraries from Perl

DISTNAME=	Gtk2-1.2492

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 z

MODULES=	cpan \
		devel/gettext

LIB_DEPENDS=	x11/gtk+2

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

RUN_DEPENDS=	devel/p5-Glib2 \
		devel/p5-Pango \
		graphics/p5-Cairo
		
TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
