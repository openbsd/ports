# $OpenBSD: Makefile,v 1.29 2013/09/30 07:03:53 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	set of modules to use Gtk+2 libraries from Perl

DISTNAME=	Gtk2-1.248

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

RUN_DEPENDS=	devel/p5-Glib2>=1.280 \
		devel/p5-Pango>=1.222 \
		graphics/p5-Cairo>=1.101
		
TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
