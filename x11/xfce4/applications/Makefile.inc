CATEGORIES?=	x11 x11/xfce4 x11/xfce4/applications

MASTER_SITES?=	http://www.xfce.org/archive/xfce-4.0.1/src/
DIST_SUBDIR?=	xfce4

HOMEPAGE?=	http://www.xfce.org/

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

USE_X11?=	Yes

MODULES?=	gettext

GTK2=	gdk_pixbuf-2.0.0.14,gdk-x11-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
GUI=	xfcegui4.1.5::x11/xfce4/libraries/libxfcegui4
MCS=	xfce4mcs-client.1.0,xfce4mcs-manager.1.0::x11/xfce4/libraries/libxfce4mcs

BUILD_DEPENDS?=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/desktop/xfce-mcs-manager
RUN_DEPENDS?=	:xfce-mcs-manager-*:x11/xfce4/desktop/xfce-mcs-manager

CONFIGURE_STYLE?=gnu
CONFIGURE_ENV?=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
