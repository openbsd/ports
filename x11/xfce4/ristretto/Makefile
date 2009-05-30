# $OpenBSD: Makefile,v 1.13 2009/05/30 20:34:48 landry Exp $

COMMENT=	Xfce4 lightweight image-viewer

XFCE_VERSION=	0.0.22
XFCE_GOODIE=	ristretto
EXTRACT_SUFX=	.tar.gz

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes
RUN_DEPENDS=	::misc/shared-mime-info

LIB_DEPENDS=	thunar-vfs-1.>=4.2::x11/xfce4/thunar \

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		exif exo-0.3 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread xfce4util xfcegui4 z

.include <bsd.port.mk>
