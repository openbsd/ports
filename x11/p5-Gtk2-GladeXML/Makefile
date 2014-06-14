# $OpenBSD: Makefile,v 1.22 2014/06/14 23:26:03 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Glade 2.x support for Gtk2-Perl

DISTNAME=	Gtk2-GladeXML-1.007
REVISION=	8

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += xml2 z

MODULES=	cpan \
		devel/gettext

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
