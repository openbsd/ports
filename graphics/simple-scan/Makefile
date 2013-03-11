# $OpenBSD: Makefile,v 1.29 2013/03/11 11:10:55 espie Exp $

COMMENT=	simple scanning utility

GNOME_PROJECT=	simple-scan
GNOME_VERSION=	3.6.0
REVISION=	0

CATEGORIES=	graphics

HOMEPAGE=	https://launchpad.net/simple-scan

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject colord colordprivate
WANTLIB += expat fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += sane z

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

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf

.include <bsd.port.mk>
