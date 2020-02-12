# $OpenBSD: Makefile,v 1.7 2020/02/12 19:44:23 ajacoutot Exp $

COMMENT=	interactive accessibility explorer

GNOME_PROJECT=	accerciser
GNOME_VERSION=	3.34.4

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
		devel/libwnck3 \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/py-xlib${MODPY_FLAVOR} \
		x11/gnome/py-atspi \
		x11/gtk+3

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
