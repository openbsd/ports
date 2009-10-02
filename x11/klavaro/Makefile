# $OpenBSD: Makefile,v 1.1.1.1 2009/10/02 13:40:52 pea Exp $

COMMENT =	touch typing tutor program

DISTNAME =	klavaro-1.3.1

CATEGORIES =	x11

HOMEPAGE =	http://klavaro.sourceforge.net/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_BZIP2 = 	Yes

WANTLIB = 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender c expat fontconfig freetype \
		m pixman-1 z gio-2.0 atk-1.0 cairo glib-2.0 glitz curl \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 gmodule-2.0 png \
		gobject-2.0 pthread-stubs xcb

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=klavaro/}

EXTRACT_SUFX = 	.tar.bz2

MODULES =       devel/gettext

LIB_DEPENDS = 	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gtkdatabox::x11/gtkdatabox \
		xml2.>=9::textproc/libxml \
		sexy::x11/libsexy \
		curl.::net/curl

USE_X11 =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib" \

.include <bsd.port.mk>
