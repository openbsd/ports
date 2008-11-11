# $OpenBSD: Makefile,v 1.1.1.1 2008/11/11 23:11:25 jasper Exp $

COMMENT=		user interface builder for the GTK2+ toolkit

GNOME_VERSION =		3.5.2
GNOME_PROJECT = 	glade3
CATEGORIES =		devel
SHARED_LIBS +=  gladeui-1            0.0      # .8.0

HOMEPAGE =		http://glade.gnome.org/
MAINTAINER =		Jason Beaudoin <jasonbeaudoin@gmail.com>

# GPLv2, with exception of png images under:
# plugins/{gtk+,gnome}/icons  (which are LGPL)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes 

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 esd expat fontconfig \
		freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome
    
LIB_DEPENDS=            dbus-glib-1::x11/dbus-glib \
			gnomeui-2::x11/gnome/libgnomeui
BUILD_DEPENDS=          :scrollkeeper->=0.3.12:textproc/scrollkeeper \
			::x11/gnome/doc-utils
RUN_DEPENDS=            :scrollkeeper->=0.3.12:textproc/scrollkeeper

DESKTOP_FILES = 	Yes
MODGNOME_HELP_FILES =	Yes
USE_X11 =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS+=	--disable-scrollkeeper
CONFIGURE_ENV=          CPPFLAGS="-pthread -I${LOCALBASE}/include"      \
                        LDFLAGS="-pthread -L${LOCALBASE}/lib"

.include <bsd.port.mk>
