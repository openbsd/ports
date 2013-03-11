# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:30 espie Exp $

COMMENT=	small utility which displays system activity

DISTNAME=	hot-babe-0.2.2
REVISION=	10
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0

MASTER_SITES=	${HOMEPAGE}/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
