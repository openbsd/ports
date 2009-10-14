# $OpenBSD: Makefile,v 1.5 2009/10/14 08:12:45 ajacoutot Exp $

COMMENT=	integration of xdg-user-dirs into GNOME/gtk+

GNOME_PROJECT=	xdg-user-dirs-gtk
GNOME_VERSION=	0.8
PKGNAME=	${DISTNAME}p3

CATEGORIES=	x11 devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/xdg-user-dirs
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

CFLAGS+=	-pthread

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/xdg-user-dirs-gtk/xdg/autostart

.include <bsd.port.mk>
