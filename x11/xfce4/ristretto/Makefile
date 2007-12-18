# $OpenBSD: Makefile,v 1.5 2007/12/18 21:05:06 landry Exp $

COMMENT=	lightweight image-viewer for xfce4

V=		0.0.15
DISTNAME=	ristretto-${V}

HOMEPAGE=	http://goodies.xfce.org/projects/applications/ristretto
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL v2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/ristretto/

USE_GMAKE=	Yes

RUN_DEPENDS=	::misc/shared-mime-info \
		:desktop-file-utils-*:devel/desktop-file-utils

LIB_DEPENDS=	thunar-vfs-1.>=4.2::x11/xfce4/thunar \

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		exif exo-0.3 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread xfce4util xfcegui4 z

.include <bsd.port.mk>
