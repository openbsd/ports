# $OpenBSD: Makefile,v 1.22 2012/12/29 13:55:35 sthen Exp $

COMMENT =	clone of rxvt with Unicode and Xft support

DISTNAME =	rxvt-unicode-9.16
REVISION =	0
CATEGORIES =	x11

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	http://dist.schmorp.de/rxvt-unicode/ \
		http://dist.schmorp.de/rxvt-unicode/Attic/

HOMEPAGE =	http://software.schmorp.de/pkg/rxvt-unicode.html

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xft Xrender c expat fontconfig freetype \
		gdk_pixbuf-2.0 glib-2.0 gobject-2.0 m perl \
		pthread startup-notification-1 util z

MODULES =	devel/gettext

LIB_DEPENDS =	devel/startup-notification \
		graphics/gdk-pixbuf2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-256-color \
			--enable-perl \
			--enable-pixbuf \
			--enable-startup-notification \
			--with-term=rxvt-256color
# XXX utmp recording should also be enabled, as per rxvt (which will
# also require setgid utmp), but this currently fails

# missing locale support
CONFIGURE_ARGS +=	--disable-xim

.include <bsd.port.mk>
