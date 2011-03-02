# $OpenBSD: Makefile,v 1.5 2011/03/02 06:41:33 ajacoutot Exp $

COMMENT=	automatic color temperature adjustment

V=		1.6
DISTNAME=	redshift-${V}
EXTRACT_SUFX=	.tar.bz2

REVISION=	0

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

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-silent-rules \
		--enable-randr \
		--enable-vidmode \
		--enable-gnome-clock \
		--enable-gui

MODPY_ADJ_FILES= src/gtk-redshift/gtk-redshift

.include <bsd.port.mk>
