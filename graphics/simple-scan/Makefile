# $OpenBSD: Makefile,v 1.25 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT=	simple scanning utility

GNOME_PROJECT=	simple-scan
GNOME_VERSION=	3.4.2
REVISION=	3

CATEGORIES=	graphics

HOMEPAGE=	https://launchpad.net/simple-scan

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject colord
WANTLIB += expat fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs sane xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=	https://launchpad.net/simple-scan/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/${GNOME_VERSION}/+download/
EXTRACT_SUFX=	.tar.gz

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	graphics/sane-backends \
		x11/gtk+3 \
		graphics/colord

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
