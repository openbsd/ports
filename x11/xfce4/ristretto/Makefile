# $OpenBSD: Makefile,v 1.3 2007/10/25 19:52:35 landry Exp $

COMMENT=	lightweight image-viewer for xfce4

V=		0.0.9
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

LIB_DEPENDS=	exo-0.3.>=4::x11/xfce4/exo \
		thunar-vfs-1.>=4.2::x11/xfce4/thunar \
		exif.>=12::graphics/libexif

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr m z c \
		Xrender Xcomposite Xdamage expat fontconfig freetype pthread \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 \
		glitz gmodule-2.0 gthread-2.0 pango-1.0 pangocairo-1.0 \
		atk-1.0 pangoft2-1.0 xfce4util cairo png

.include <bsd.port.mk>
