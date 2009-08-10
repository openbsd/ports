# $OpenBSD: Makefile,v 1.13 2009/08/10 06:34:30 kili Exp $

COMMENT=	small utility which displays system activity

DISTNAME=	hot-babe-0.2.2
PKGNAME=	${DISTNAME}p7
CATEGORIES=	sysutils

HOMEPAGE=	http://dindinx.net/hotbabe/

MAINTAINER=	Jan Lindblom <cl0wn@ludd.ltu.se>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

MASTER_SITES=	${HOMEPAGE}/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
