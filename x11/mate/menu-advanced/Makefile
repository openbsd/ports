COMMENT=		advanced menu for MATE

GH_COMMIT=		61a995e25948015a4f6d86e12cf6141a3b729ce7
GH_ACCOUNT=		rnagy
GH_PROJECT=		mate-menu
DISTNAME=		mate-menu-advanced-20.04.1
REVISION=		7

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gtk-update-icon-cache \
			gobject-introspection

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/py-distutils-extra

RUN_DEPENDS=		devel/py-gobject3 \
			devel/py-setproctitle \
			devel/py-xdg \
			x11/mate/panel \
			x11/py-xlib \
			x11/gtk+3

.include <bsd.port.mk>
