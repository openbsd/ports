# $OpenBSD: Makefile,v 1.2 2014/06/14 23:25:21 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl interface to the GooCanvas

DISTNAME=		Goo-Canvas-0.06
REVISION=		0

CATEGORIES=		graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 goocanvas
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MODULES=		cpan \
			devel/gettext

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

LIB_DEPENDS=		graphics/goocanvas

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig \
			${RUN_DEPENDS}

RUN_DEPENDS=		x11/p5-Gtk2

.include <bsd.port.mk>
