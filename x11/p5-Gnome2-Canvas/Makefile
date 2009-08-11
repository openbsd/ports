# $OpenBSD: Makefile,v 1.9 2009/08/11 08:42:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl bindings for the 2.x series of the GNOME Canvas widget

DISTNAME=	Gnome2-Canvas-1.002
PKGNAME=	p5-${DISTNAME}p4
CATEGORIES=	x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb

MODULES=	cpan \
		devel/gettext

USE_X11=	Yes

BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}
LIB_DEPENDS=	art_lgpl_2.>=5::graphics/libart \
		gnomecanvas-2.>=1::x11/gnome/libgnomecanvas
RUN_DEPENDS=	::devel/p5-Glib2 \
		::x11/p5-Gtk2

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE=Yes
REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-configure:
	perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
