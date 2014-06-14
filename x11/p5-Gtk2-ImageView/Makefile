# $OpenBSD: Makefile,v 1.2 2014/06/14 23:26:03 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl bindings to the GtkImageView image viewer widget

DISTNAME=		Gtk2-ImageView-0.05
REVISION=		0

CATEGORIES=		x11

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += gtkimageview m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MODULES=	cpan \
		devel/gettext

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		graphics/gtkimageview

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig \
			${RUN_DEPENDS}

RUN_DEPENDS=		x11/p5-Gtk2

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
