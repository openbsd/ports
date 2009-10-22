# $OpenBSD: Makefile,v 1.3 2009/10/22 22:51:04 ajacoutot Exp $

COMMENT =	graphical su wrapper
DISTNAME =	ktsuss-1.4
PKGNAME=	${DISTNAME}p1
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
CONFIGURE_ENV =		LDFLAGS="-pthread"
CFLAGS +=		-pthread

MODULES=	devel/gettext

LIB_DEPENDS =	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2,-main

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb z pthread

.include <bsd.port.mk>
