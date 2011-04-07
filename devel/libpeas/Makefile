# $OpenBSD: Makefile,v 1.1.1.1 2011/04/07 18:52:14 ajacoutot Exp $

COMMENT=	gobject-based plugins engine

GNOME_PROJECT=	libpeas
GNOME_VERSION=	1.0.0

CATEGORIES=	devel

SHARED_LIBS +=  peas-1.0                  0.0 # 0.0
SHARED_LIBS +=  peas-gtk-1.0              0.0 # 0.0

HOMEPAGE=	http://live.gnome.org/Libpeas

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += python2.6 util xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

RUN_DEPENDS=	devel/py-gobject

BUILD_DEPENDS=	lang/vala \
		devel/py-gobject \
		devel/glade

LIB_DEPENDS=	devel/gobject-introspection \
		x11/gtk+3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-glade-catalog \
		--enable-python \
		--enable-vala \

# XXX needs seed>=3.0.0 which requires webkit-gtk3
CONFIGURE_ARGS += --enable-seed=no

.include <bsd.port.mk>
