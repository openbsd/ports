# $OpenBSD: Makefile,v 1.25 2010/10/11 08:12:30 jasper Exp $

COMMENT=		user interface builder for the GTK2+ toolkit

GNOME_VERSION =		3.6.7
GNOME_PROJECT = 	glade3

REVISION =		4

CATEGORIES =		devel
SHARED_LIBS +=  gladeui-1            1.0      # 10.0

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
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo canberra crypto dbus-1 expat fontconfig
WANTLIB += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomevfs-2 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread pthread-stubs ssl util
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-render-util xml2
WANTLIB += z

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
