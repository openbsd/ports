V?=	4.0.3

CATEGORIES?=	x11 x11/xfce4 x11/xfce4/libraries

MASTER_SITES?=	http://www.xfce.org/archive/xfce-${V}/src/
DIST_SUBDIR?=	xfce4

HOMEPAGE?=	http://xfce.org/index.php?page=overview

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# BSD:
#	libxfce4util
# GPL:
#	libxfce4mcs
#	libxfcegui4
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

USE_X11?=	Yes

MODULES?=	gettext

BUILD_DEPENDS?=	:pkgconfig-*:devel/pkgconfig

GLIB2=	glib-2.0.0.11::devel/glib2	
GTK2=	gdk_pixbuf-2.0.0.14,gdk-x11-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
UTIL=	xfce4util.1.0::x11/xfce4/libraries/libxfce4util

CONFIGURE_STYLE?=gnu
