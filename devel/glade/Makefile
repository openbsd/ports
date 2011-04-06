# $OpenBSD: Makefile,v 1.25 2011/04/06 12:15:55 ajacoutot Exp $

COMMENT=	user interface builder for the gtk+3 toolkit

GNOME_VERSION=	3.10.0
GNOME_PROJECT= 	glade

CATEGORIES=	devel

SHARED_LIBS +=  gladeui-2                 0.0 # 0.0

HOMEPAGE=	http://glade.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs ${MODPY_WANTLIB} util
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		lang/python
    
LIB_DEPENDS=	x11/gtk+3 \
		devel/libffi

RUN_DEPENDS=	x11/gnome/devhelp

DESKTOP_FILES= 	Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-introspection
CONFIGURE_ENV=	CPPFLAGS="-pthread -I${LOCALBASE}/include"      \
		LDFLAGS="-pthread -lutil -L${LOCALBASE}/lib"

FAKE_FLAGS=	itlocaledir=${PREFIX}/share/locale

.include <bsd.port.mk>
