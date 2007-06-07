# $OpenBSD: Makefile,v 1.5 2007/06/07 07:44:28 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"set of modules to use Gtk+2 libraries from Perl"

MODULES=	cpan
DISTNAME=	Gtk2-1.144
CATEGORIES=	x11

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m freetype fontconfig X11 Xext Xrender z \
		Xau Xcursor Xdmcp Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 glitz png \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo

MODULES+=	devel/gettext

USE_X11=	Yes

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

RUN_DEPENDS=	:p5-Glib2->=1.140:devel/p5-Glib2 \
		:p5-Cairo->=1.00:graphics/p5-Cairo
		
# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 

REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS+=DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
