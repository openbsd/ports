# $OpenBSD: Makefile,v 1.3 2019/10/31 22:54:12 ajacoutot Exp $

COMMENT=	interactive accessibility explorer

GNOME_PROJECT=	accerciser
GNOME_VERSION=	3.34.1

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		devel/dconf \
		x11/gnome

BUILD_DEPENDS=	devel/appstream-glib \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/py-xlib${MODPY_FLAVOR} \
		x11/gnome/py-atspi \
		x11/gtk+3

RUN_DEPENDS= 	devel/ipython${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/py-xlib${MODPY_FLAVOR} \
		x11/gnome/py-atspi \
		x11/gtk+3

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
