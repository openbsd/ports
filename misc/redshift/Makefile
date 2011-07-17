# $OpenBSD: Makefile,v 1.10 2011/07/17 08:05:36 rpointel Exp $

COMMENT=	automatic color temperature adjustment

V=		1.7
DISTNAME=	redshift-${V}
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	misc

HOMEPAGE=	http://jonls.dk/redshift/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xxf86vm c glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pthread pthread-stubs xcb xcb-randr ORBit-2
WANTLIB += gconf-2 gio-2.0

MASTER_SITES=	http://launchpad.net/redshift/trunk/${V:C/^([0-9]+\.[0-9]+).*/\1/}/+download/

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/py-gtk2 \
		devel/py-xdg
LIB_DEPENDS=	devel/gconf2

MODULES=	devel/gettext \
		lang/python

# nothing in the dep chain provides librsvg, so explicitely depend on it
# so that the icon is correctly displayed
RUN_DEPENDS+=	x11/gnome/librsvg

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-randr \
		--enable-vidmode \
		--enable-gnome-clock \
		--enable-gui

MODPY_ADJ_FILES= src/gtk-redshift/gtk-redshift

.include <bsd.port.mk>
