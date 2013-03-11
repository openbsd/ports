# $OpenBSD: Makefile,v 1.20 2013/03/11 11:46:14 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Glade 2.x support for Gtk2-Perl

DISTNAME=	Gtk2-GladeXML-1.007
REVISION=	6

CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes glade-2.0
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 xml2
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png z pthread-stubs xcb

MODULES=	cpan \
		devel/gettext

USE_GROFF =	Yes

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
