V?=	4.0.6

CATEGORIES?=	x11 x11/xfce4 x11/xfce4/themes

MASTER_SITES?=	http://hannelore.f1.fhtw-berlin.de/mirrors/xfce4/xfce-${V}/src/
DIST_SUBDIR?=	xfce4

HOMEPAGE?=	http://www.xfce.org/

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# ?
PERMIT_DISTFILES_CDROM?=No
PERMIT_DISTFILES_FTP?=	No
PERMIT_PACKAGE_CDROM?=	No
PERMIT_PACKAGE_FTP?=	No

USE_X11?=	Yes

GTK2=	gdk_pixbuf-2.0.0.14,gdk-x11-2.0.0.14,gtk-x11-2.0.0.14::x11/gtk+2
PKG=	:pkgconfig-*:devel/pkgconfig
XFDESK=	:xfdesktop-*:x11/xfce4/desktop/xfdesktop

CONFIGURE_STYLE?=gnu
