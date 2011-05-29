# $OpenBSD: Makefile,v 1.11 2011/05/29 20:27:28 dcoppa Exp $

COMMENT =	clone of rxvt with Unicode and Xft support

DISTNAME =	rxvt-unicode-9.11
REVISION =	0
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://dist.schmorp.de/rxvt-unicode/

HOMEPAGE =	http://software.schmorp.de/pkg/rxvt-unicode.html

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xdmcp Xft Xrender c expat fontconfig \
		freetype gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 m perl png \
		pthread-stubs pthread util xcb z

MODULES =	devel/gettext

LIB_DEPENDS =	graphics/gdk-pixbuf2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-256-color \
			--enable-perl \
			--enable-pixbuf \
			--with-term=rxvt-256color \
			--disable-afterimage
# missing locale support
CONFIGURE_ARGS +=	--disable-xim

.include <bsd.port.mk>
