COMMENT=	interactive accessibility explorer

GNOME_PROJECT=	accerciser
GNOME_VERSION=	3.44.1
REVISION=	2

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	devel/dconf \
		devel/meson \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/appstream \
		devel/py-gobject3 \
		x11/gnome/py-atspi \
		x11/gtk+3

RUN_DEPENDS= 	devel/ipython \
		devel/libwnck3 \
		devel/py-gobject3 \
		devel/py-traitlets \
		devel/py-xdg \
		graphics/py-cairo \
		x11/dbus-python \
		x11/gnome/py-atspi \
		x11/gtk+3

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
