# $OpenBSD: Makefile,v 1.54 2013/04/16 10:21:58 ajacoutot Exp $

COMMENT=	user interface builder for the gtk+3 toolkit

GNOME_VERSION=	3.14.2
GNOME_PROJECT= 	glade
REVISION=	0

CATEGORIES=	devel

SHARED_LIBS +=  gladeui-2                 1.0 # 0.0

HOMEPAGE=	http://glade.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icule icuuc m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ util xcb xcb-render xcb-shm xml2 z ${MODPY_WANTLIB}

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

BUILD_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	x11/gtk+3>=3.5.18 \
		devel/libffi

RUN_DEPENDS=	x11/gnome/devhelp \
		devel/py-gobject3

MODGNOME_DESKTOP_FILE= 	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= goi yelp

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-pthread
MODGNOME_LDFLAGS=	-pthread -lutil

post-install:
	rm ${PREFIX}/lib/glade/modules/*.{a,la}

.include <bsd.port.mk>
