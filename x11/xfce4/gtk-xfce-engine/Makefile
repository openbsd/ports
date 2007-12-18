# $OpenBSD: Makefile,v 1.18 2007/12/18 20:31:56 landry Exp $

COMMENT=	theme engine for GTK2
V=		4.4.2
DISTNAME=	gtk-xfce-engine-2.4.2
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

WANTLIB=	X11 Xrender Xau Xdmcp atk-1.0 fontconfig freetype expat \
		Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr \
		glib-2.0 gmodule-2.0 gobject-2.0 m z pcre png \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 cairo glitz

.include <bsd.port.mk>
