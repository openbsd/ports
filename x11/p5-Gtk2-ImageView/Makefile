# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:08 sthen Exp $

COMMENT=		Perl bindings to the GtkImageView image viewer widget

DISTNAME=		Gtk2-ImageView-0.05
REVISION=		6

CATEGORIES=		x11
FIX_EXTRACT_PERMISSIONS=Yes

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += gtkimageview intl pango-1.0 pangocairo-1.0 pangoft2-1.0 perl
WANTLIB += z

MODULES=	cpan

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		devel/gettext,-runtime \
			graphics/gtkimageview

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig \
			${RUN_DEPENDS}

RUN_DEPENDS=		x11/p5-Gtk2

TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
