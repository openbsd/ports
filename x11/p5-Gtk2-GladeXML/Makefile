# $OpenBSD: Makefile,v 1.9 2009/08/11 08:42:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Glade 2.x support for Gtk2-Perl

DISTNAME=	Gtk2-GladeXML-1.007
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png z pthread-stubs xcb

MODULES=	cpan \
		devel/gettext

USE_X11=	Yes

BUILD_DEPENDS=	:p5-ExtUtils-Depends->=0.301:devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}
LIB_DEPENDS=	xml2.>=9::textproc/libxml \
		glade-2.0::devel/libglade2
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
