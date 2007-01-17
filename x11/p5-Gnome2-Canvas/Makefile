# $OpenBSD: Makefile,v 1.1.1.1 2007/01/17 13:41:11 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"Perl bindings for the 2.x series of the Gnome Canvas widget"

DISTNAME=	Gnome2-Canvas-1.002
CATEGORIES=	x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext Xrender fontconfig freetype m z atk-1.0 cairo \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
                gobject-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png

MODULES=	cpan devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes

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
REGRESS_FLAGS+=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

pre-configure:
	perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
