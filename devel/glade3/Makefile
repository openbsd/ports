# $OpenBSD: Makefile,v 1.16 2009/06/13 07:40:34 ajacoutot Exp $

COMMENT=		user interface builder for the GTK2+ toolkit

GNOME_VERSION =		3.6.5
GNOME_PROJECT = 	glade3

CATEGORIES =		devel
SHARED_LIBS +=  gladeui-1            0.1      # .9.3

HOMEPAGE =		http://glade.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2, with exception of png images under:
# plugins/{gtk+,gnome}/icons (which are LGPL)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes 

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome
    
LIB_DEPENDS=            dbus-glib-1::x11/dbus-glib \
			gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=		::x11/gnome/devhelp

DESKTOP_FILES = 	Yes
MODGNOME_HELP_FILES =	Yes
USE_X11 =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-python
CONFIGURE_ENV=          CPPFLAGS="-pthread -I${LOCALBASE}/include"      \
                        LDFLAGS="-pthread -L${LOCALBASE}/lib"

.include <bsd.port.mk>
