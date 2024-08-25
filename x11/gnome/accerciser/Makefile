COMMENT=	interactive accessibility explorer

GNOME_PROJECT=	accerciser
GNOME_VERSION=	3.44.1

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	devel/dconf \
		devel/meson \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/appstream \
		devel/py-gobject3${MODPY_FLAVOR} \
		x11/gnome/py-atspi \
		x11/gtk+3

RUN_DEPENDS= 	devel/ipython${MODPY_FLAVOR} \
		devel/libwnck3 \
		devel/py-gobject3${MODPY_FLAVOR} \
		devel/py-traitlets${MODPY_FLAVOR} \
		devel/py-xdg${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		x11/dbus-python${MODPY_FLAVOR} \
		x11/gnome/py-atspi \
		x11/gtk+3

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
