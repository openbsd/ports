# $OpenBSD: Makefile,v 1.1.1.1 2010/09/06 06:21:19 ajacoutot Exp $

COMMENT=	automatic color temperature adjustment

DISTNAME=	redshift-1.5
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
WANTLIB += dbus-1 gconf-2

MASTER_SITES=	http://launchpad.net/redshift/trunk/1.5/+download/

RUN_DEPENDS=	::devel/desktop-file-utils \
		::py-xdg
LIB_DEPENDS=	::devel/gconf2

MODULES=	devel/gettext \
		lang/python

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-silent-rules \
		--enable-randr \
		--enable-vidmode \
		--enable-gnome-clock \
		--enable-gui

pre-configure:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/src/gtk-redshift/gtk-redshift

.include <bsd.port.mk>
