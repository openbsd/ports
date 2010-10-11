# $OpenBSD: Makefile,v 1.18 2010/10/11 08:19:37 jasper Exp $

COMMENT=	Xfce4 lightweight image-viewer

XFCE_VERSION=	0.0.22
XFCE_GOODIE=	ristretto
REVISION=	3

EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes
RUN_DEPENDS=	::misc/shared-mime-info

LIB_DEPENDS=	::x11/xfce4/thunar \

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		exif exo-0.3 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread xfce4util xfcegui4 z \
		pthread-stubs xcb thunar-vfs-1 xcb-render xcb-render-util

.include <bsd.port.mk>
