# $OpenBSD: Makefile,v 1.16 2009/09/06 10:46:25 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	set of modules to use Gtk+2 libraries from Perl

MODULES=	cpan
DISTNAME=	Gtk2-1.220
PKGNAME=	p5-${DISTNAME}p0

CATEGORIES=	x11

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

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

MODULES+=	devel/gettext

USE_X11=	Yes

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig \
		${RUN_DEPENDS}

RUN_DEPENDS=	:p5-Glib2->=1.200:devel/p5-Glib2 \
		::devel/p5-Pango \
		:p5-Cairo->=1.00:graphics/p5-Cairo
		
REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
