# $OpenBSD: Makefile,v 1.6 2012/09/04 20:46:22 landry Exp $

COMMENT =	Thunar old vfs compat

XFCE_PROJECT =	thunar-vfs
XFCE_VERSION =	1.2.0
SHARED_LIBS +=  thunar-vfs-1              5.2 # 5.1
REVISION=	4

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

CONFIGURE_ARGS +=	--disable-gnome-thumbnailers
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS +=	x11/xfce4/exo>=0.6.0 \
		x11/gtk+2 \
		devel/startup-notification \
		sysutils/gamin

WANTLIB += X11 c exo-1 freetype gamin-1 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 jpeg m pixman-1 png
WANTLIB += pthread startup-notification-1 xfce4util

.include <bsd.port.mk>
