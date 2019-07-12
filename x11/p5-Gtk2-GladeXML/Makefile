# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:18 sthen Exp $

COMMENT=	Glade 2.x support for Gtk2-Perl

DISTNAME=	Gtk2-GladeXML-1.007
REVISION=	12

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0 perl
WANTLIB += xml2 z

MODULES=	cpan

BUILD_DEPENDS=	devel/p5-ExtUtils-Depends>=0.301 \
		devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}
LIB_DEPENDS=	textproc/libxml \
		devel/libglade2
RUN_DEPENDS=	devel/p5-Glib2 \
		x11/p5-Gtk2

TEST_IS_INTERACTIVE=x11

pre-configure:
	perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
