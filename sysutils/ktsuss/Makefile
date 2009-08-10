# $OpenBSD: Makefile,v 1.2 2009/08/10 06:34:30 kili Exp $

COMMENT =	graphical su wrapper
DISTNAME =	ktsuss-1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES =	sysutils
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE =	http://developer.berlios.de/projects/ktsuss
MASTER_SITES =	${MASTER_SITE_BERLIOS:=ktsuss/}

CONFIGURE_STYLE =	gnu

MODULES=	devel/gettext

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2,-main

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb z

.include <bsd.port.mk>
